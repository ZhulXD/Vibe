#!/usr/bin/env python3
"""Patch MinHub smali so the app always runs as login_type==2 (OWNER).

Usage: patch_owner.py [apktool-decoded-dir]

Expects an apktool-decoded tree (apktool.yml + smali/). All six edits are
idempotent, so re-running on an already-patched tree is safe.
"""
import re
import sys
import pathlib

SMALI = pathlib.Path(sys.argv[1] if len(sys.argv) > 1 else "apktool") / "smali"
if not SMALI.is_dir():
    raise SystemExit(f"FAIL: smali dir not found: {SMALI}")
report = []


def patch_method(path, signature, new_body):
    """Replace a whole .method block (matched by signature line) with new_body."""
    text = path.read_text()
    pat = re.compile(
        r"^\.method[^\n]*" + re.escape(signature) + r"[^\n]*\n.*?^\.end method\s*$",
        re.S | re.M,
    )
    m = pat.search(text)
    if not m:
        raise SystemExit(f"FAIL: method not found: {signature} in {path}")
    if text.count(m.group(0)) != 1:
        raise SystemExit(f"FAIL: ambiguous match: {signature} in {path}")
    text = text[: m.start()] + new_body + text[m.end() :]
    path.write_text(text)
    report.append(f"OK  {path.relative_to(SMALI)}  {signature.split('(')[0].split()[-1]}")


def patch_once(path, old, new, marker):
    """Insert `new` in place of `old`, requiring exactly one occurrence.

    `marker` is a short unique substring only present once the edit has been
    applied, so re-running on an already-patched tree is a no-op.
    """
    text = path.read_text()
    if marker in text:
        report.append(f"SKIP {path.relative_to(SMALI)}  already applied")
        return
    n = text.count(old)
    if n != 1:
        raise SystemExit(f"FAIL: expected 1 occurrence, found {n} in {path}:\n{old}")
    path.write_text(text.replace(old, new))
    report.append(f"OK   {path.relative_to(SMALI)}  snippet")


d = SMALI / "S1" / "d.smali"

# 1) d.n() -> always logged in.
patch_method(
    d,
    "n(Landroid/content/Context;)Z",
    ".method public static n(Landroid/content/Context;)Z\n"
    "    .locals 1\n\n"
    "    const/4 v0, 0x1\n\n"
    "    return v0\n"
    ".end method\n",
)

# 2) d.p() -> always treat as supporter (Patreon-gated features unlocked).
patch_method(
    d,
    "p(Landroid/content/Context;)Z",
    ".method public static p(Landroid/content/Context;)Z\n"
    "    .locals 1\n\n"
    "    const/4 v0, 0x1\n\n"
    "    return v0\n"
    ".end method\n",
)

# 3) d.o() -> session always valid (no guest/timeout expiry).
patch_method(
    d,
    "o(Landroid/content/Context;)Z",
    ".method public static o(Landroid/content/Context;)Z\n"
    "    .locals 1\n\n"
    "    const/4 v0, 0x1\n\n"
    "    return v0\n"
    ".end method\n",
)

# 4) d.z(ctx, type) -> always persist login_type = 2 (OWNER).
patch_once(
    d,
    '    const-string v0, "login_type"\n'
    "\n"
    "    .line 15\n"
    "    .line 16\n"
    "    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putInt"
    "(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;",
    '    const-string v0, "login_type"\n'
    "\n"
    "    .line 15\n"
    "    .line 16\n"
    "    const/4 p1, 0x2\n\n"
    "    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putInt"
    "(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;",
    "    const/4 p1, 0x2\n",
)

# 5) LoginActivity: force displayed/branched login_type to 2 (OWNER).
la = SMALI / "com" / "minhub" / "gamehub" / "hub" / "LoginActivity.smali"
patch_once(
    la,
    '    const-string v5, "login_type"\n'
    "\n"
    "    .line 243\n"
    "    .line 244\n"
    '    invoke-interface {v1, v5, v2}, Landroid/content/SharedPreferences;->getInt'
    "(Ljava/lang/String;I)I\n"
    "\n"
    "    .line 245\n"
    "    .line 246\n"
    "    .line 247\n"
    "    move-result v1\n",
    '    const-string v5, "login_type"\n'
    "\n"
    "    .line 243\n"
    "    .line 244\n"
    '    invoke-interface {v1, v5, v2}, Landroid/content/SharedPreferences;->getInt'
    "(Ljava/lang/String;I)I\n"
    "\n"
    "    .line 245\n"
    "    .line 246\n"
    "    .line 247\n"
    "    move-result v1\n"
    "\n"
    "    const/4 v1, 0x2\n",
    "    const/4 v1, 0x2\n",
)

# 6) SessionVerifier: skip server-side invalidation (owner sessions are local).
sv = SMALI / "com" / "minhub" / "gamehub" / "hub" / "auth" / "SessionVerifier.smali"
patch_method(
    sv,
    "verifyInBackground(Landroid/content/Context;Lkotlin/jvm/functions/Function0;)V",
    ".method public final verifyInBackground(Landroid/content/Context;"
    "Lkotlin/jvm/functions/Function0;)V\n"
    "    .locals 0\n\n"
    "    return-void\n"
    ".end method\n",
)

# 7) BigInteger.TWO is API 33+, but MinHub declares minSdk 24. The single
#    reference lives in a synthetic bridge (N1/x.<clinit> is its only caller),
#    so swapping the constant read for valueOf(2) is a complete fix.
nv = SMALI / "N1" / "v.smali"
patch_method(
    nv,
    "i()Ljava/math/BigInteger;",
    ".method public static bridge synthetic i()Ljava/math/BigInteger;\n"
    "    .locals 2\n"
    "\n"
    "    const-wide/16 v0, 0x2\n"
    "\n"
    "    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)"
    "Ljava/math/BigInteger;\n"
    "\n"
    "    move-result-object v0\n"
    "\n"
    "    return-object v0\n"
    ".end method\n",
)

print("\n".join(report))
print(f"\n{len(report)} patches applied.")