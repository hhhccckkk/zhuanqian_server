.class Lnet/youmi/android/offers/f/g;
.super Ljava/lang/Object;

# interfaces
.implements Lnet/youmi/android/a/b/k/a/a;


# instance fields
.field final synthetic a:J

.field final synthetic b:Ljava/io/File;

.field final synthetic c:Ljava/io/File;

.field final synthetic d:Lnet/youmi/android/a/b/g/e/a;

.field final synthetic e:Ljava/io/File;

.field final synthetic f:Ljava/io/File;

.field final synthetic g:Lnet/youmi/android/offers/f/f;


# direct methods
.method constructor <init>(Lnet/youmi/android/offers/f/f;JLjava/io/File;Ljava/io/File;Lnet/youmi/android/a/b/g/e/a;Ljava/io/File;Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lnet/youmi/android/offers/f/g;->g:Lnet/youmi/android/offers/f/f;

    iput-wide p2, p0, Lnet/youmi/android/offers/f/g;->a:J

    iput-object p4, p0, Lnet/youmi/android/offers/f/g;->b:Ljava/io/File;

    iput-object p5, p0, Lnet/youmi/android/offers/f/g;->c:Ljava/io/File;

    iput-object p6, p0, Lnet/youmi/android/offers/f/g;->d:Lnet/youmi/android/a/b/g/e/a;

    iput-object p7, p0, Lnet/youmi/android/offers/f/g;->e:Ljava/io/File;

    iput-object p8, p0, Lnet/youmi/android/offers/f/g;->f:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public a(I)V
    .locals 0

    return-void
.end method

.method public a(II)V
    .locals 2

    iget-object v0, p0, Lnet/youmi/android/offers/f/g;->g:Lnet/youmi/android/offers/f/f;

    iget-object v1, p0, Lnet/youmi/android/offers/f/g;->b:Ljava/io/File;

    invoke-static {v0, v1}, Lnet/youmi/android/offers/f/f;->a(Lnet/youmi/android/offers/f/f;Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/youmi/android/offers/f/g;->c:Ljava/io/File;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/youmi/android/offers/f/g;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/youmi/android/offers/f/g;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/youmi/android/offers/f/g;->c:Ljava/io/File;

    iget-object v1, p0, Lnet/youmi/android/offers/f/g;->b:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/youmi/android/offers/f/g;->g:Lnet/youmi/android/offers/f/f;

    iget-object v1, p0, Lnet/youmi/android/offers/f/g;->d:Lnet/youmi/android/a/b/g/e/a;

    invoke-virtual {v1}, Lnet/youmi/android/a/b/g/e/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/youmi/android/offers/f/f;->a(Lnet/youmi/android/offers/f/f;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lnet/youmi/android/offers/f/g;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/youmi/android/a/a/e/g/e;->f(Ljava/lang/String;)V

    :cond_1
    invoke-static {}, Lnet/youmi/android/a/a/i/a/b/i;->a()Lnet/youmi/android/a/a/i/a/b/i;

    move-result-object v0

    invoke-virtual {v0}, Lnet/youmi/android/a/a/i/a/b/i;->c()V

    sget-boolean v0, Lnet/youmi/android/offers/f/a;->b:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnet/youmi/android/offers/f/g;->g:Lnet/youmi/android/offers/f/f;

    iget-object v1, p0, Lnet/youmi/android/offers/f/g;->e:Ljava/io/File;

    invoke-static {v0, v1}, Lnet/youmi/android/offers/f/f;->a(Lnet/youmi/android/offers/f/f;Ljava/io/File;)Z

    :cond_2
    iget-object v0, p0, Lnet/youmi/android/offers/f/g;->g:Lnet/youmi/android/offers/f/f;

    iget-object v1, p0, Lnet/youmi/android/offers/f/g;->f:Ljava/io/File;

    invoke-static {v0, v1}, Lnet/youmi/android/offers/f/f;->a(Lnet/youmi/android/offers/f/f;Ljava/io/File;)Z

    return-void
.end method

.method public b()V
    .locals 1

    invoke-static {}, Lnet/youmi/android/a/a/i/a/b/i;->a()Lnet/youmi/android/a/a/i/a/b/i;

    move-result-object v0

    invoke-virtual {v0}, Lnet/youmi/android/a/a/i/a/b/i;->c()V

    return-void
.end method
