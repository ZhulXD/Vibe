package F;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public double f962a;
    public double b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f963c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public double f964d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public double f965e;
    public double f;
    public double g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public double f966h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public double f967i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final d f968j;

    public g() {
        this.f962a = Math.sqrt(1500.0d);
        this.b = 0.5d;
        this.f963c = false;
        this.f967i = Double.MAX_VALUE;
        this.f968j = new d();
    }

    public final d a(double d3, double d4, long j2) {
        double dSin;
        double dCos;
        if (!this.f963c) {
            if (this.f967i == Double.MAX_VALUE) {
                throw new IllegalStateException("Error: Final position of the spring must be set before the animation starts");
            }
            double d5 = this.b;
            if (d5 > 1.0d) {
                double d6 = this.f962a;
                this.f = (Math.sqrt((d5 * d5) - 1.0d) * d6) + ((-d5) * d6);
                double d7 = this.b;
                double d8 = this.f962a;
                this.g = ((-d7) * d8) - (Math.sqrt((d7 * d7) - 1.0d) * d8);
            } else if (d5 >= 0.0d && d5 < 1.0d) {
                this.f966h = Math.sqrt(1.0d - (d5 * d5)) * this.f962a;
            }
            this.f963c = true;
        }
        double d9 = j2 / 1000.0d;
        double d10 = d3 - this.f967i;
        double d11 = this.b;
        if (d11 > 1.0d) {
            double d12 = this.g;
            double d13 = ((d12 * d10) - d4) / (d12 - this.f);
            double d14 = d10 - d13;
            dSin = (Math.pow(2.718281828459045d, this.f * d9) * d13) + (Math.pow(2.718281828459045d, d12 * d9) * d14);
            double d15 = this.g;
            double dPow = Math.pow(2.718281828459045d, d15 * d9) * d14 * d15;
            double d16 = this.f;
            dCos = (Math.pow(2.718281828459045d, d16 * d9) * d13 * d16) + dPow;
        } else if (d11 == 1.0d) {
            double d17 = this.f962a;
            double d18 = (d17 * d10) + d4;
            double d19 = (d18 * d9) + d10;
            double dPow2 = Math.pow(2.718281828459045d, (-d17) * d9) * d19;
            double dPow3 = Math.pow(2.718281828459045d, (-this.f962a) * d9) * d19;
            double d20 = -this.f962a;
            dCos = (Math.pow(2.718281828459045d, d20 * d9) * d18) + (dPow3 * d20);
            dSin = dPow2;
        } else {
            double d21 = 1.0d / this.f966h;
            double d22 = this.f962a;
            double d23 = ((d11 * d22 * d10) + d4) * d21;
            dSin = ((Math.sin(this.f966h * d9) * d23) + (Math.cos(this.f966h * d9) * d10)) * Math.pow(2.718281828459045d, (-d11) * d22 * d9);
            double d24 = this.f962a;
            double d25 = this.b;
            double d26 = (-d24) * dSin * d25;
            double dPow4 = Math.pow(2.718281828459045d, (-d25) * d24 * d9);
            double d27 = this.f966h;
            double dSin2 = Math.sin(d27 * d9) * (-d27) * d10;
            double d28 = this.f966h;
            dCos = (((Math.cos(d28 * d9) * d23 * d28) + dSin2) * dPow4) + d26;
        }
        float f = (float) (dSin + this.f967i);
        d dVar = this.f968j;
        dVar.f950a = f;
        dVar.b = (float) dCos;
        return dVar;
    }

    public g(float f) {
        this.f962a = Math.sqrt(1500.0d);
        this.b = 0.5d;
        this.f963c = false;
        this.f968j = new d();
        this.f967i = f;
    }
}
