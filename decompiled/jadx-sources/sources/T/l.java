package T;

import androidx.core.graphics.PathParser;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public abstract class l extends k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public PathParser.PathDataNode[] f2100a;
    public String b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f2101c;

    public l() {
        this.f2100a = null;
        this.f2101c = 0;
    }

    public PathParser.PathDataNode[] getPathData() {
        return this.f2100a;
    }

    public String getPathName() {
        return this.b;
    }

    public void setPathData(PathParser.PathDataNode[] pathDataNodeArr) {
        if (PathParser.canMorph(this.f2100a, pathDataNodeArr)) {
            PathParser.updateNodes(this.f2100a, pathDataNodeArr);
        } else {
            this.f2100a = PathParser.deepCopyNodes(pathDataNodeArr);
        }
    }

    public l(l lVar) {
        this.f2100a = null;
        this.f2101c = 0;
        this.b = lVar.b;
        this.f2100a = PathParser.deepCopyNodes(lVar.f2100a);
    }
}
