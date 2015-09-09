.class public Lnet/youmi/android/a/a/g/c/b/d;
.super Ljava/lang/Object;


# instance fields
.field public a:J

.field public b:Ljava/lang/String;

.field public c:I

.field public d:J

.field public e:J

.field public f:Ljava/lang/String;

.field public g:J

.field public h:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v1, p0, Lnet/youmi/android/a/a/g/c/b/d;->e:J

    iput-object v0, p0, Lnet/youmi/android/a/a/g/c/b/d;->f:Ljava/lang/String;

    iput-wide v1, p0, Lnet/youmi/android/a/a/g/c/b/d;->g:J

    iput-object v0, p0, Lnet/youmi/android/a/a/g/c/b/d;->h:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;IJ)V
    .locals 3

    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v1, p0, Lnet/youmi/android/a/a/g/c/b/d;->e:J

    iput-object v0, p0, Lnet/youmi/android/a/a/g/c/b/d;->f:Ljava/lang/String;

    iput-wide v1, p0, Lnet/youmi/android/a/a/g/c/b/d;->g:J

    iput-object v0, p0, Lnet/youmi/android/a/a/g/c/b/d;->h:Ljava/lang/String;

    iput-wide p1, p0, Lnet/youmi/android/a/a/g/c/b/d;->a:J

    iput-object p3, p0, Lnet/youmi/android/a/a/g/c/b/d;->b:Ljava/lang/String;

    iput p4, p0, Lnet/youmi/android/a/a/g/c/b/d;->c:I

    iput-wide p5, p0, Lnet/youmi/android/a/a/g/c/b/d;->d:J

    return-void
.end method


# virtual methods
.method a()Z
    .locals 4

    const-wide/16 v2, 0x0

    iget-object v0, p0, Lnet/youmi/android/a/a/g/c/b/d;->b:Ljava/lang/String;

    invoke-static {v0}, Lnet/youmi/android/a/b/b/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lnet/youmi/android/a/a/g/c/b/d;->c:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    iget-wide v0, p0, Lnet/youmi/android/a/a/g/c/b/d;->a:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lnet/youmi/android/a/a/g/c/b/d;->d:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lnet/youmi/android/a/a/g/c/b/d;->d:J

    iget-wide v2, p0, Lnet/youmi/android/a/a/g/c/b/d;->a:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
