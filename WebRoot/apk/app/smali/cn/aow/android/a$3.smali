.class Lcn/aow/android/a$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/aow/android/c$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/aow/android/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/io/File;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Lcn/aow/android/a;


# direct methods
.method constructor <init>(Lcn/aow/android/a;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 302
    iput-object p1, p0, Lcn/aow/android/a$3;->f:Lcn/aow/android/a;

    iput-object p2, p0, Lcn/aow/android/a$3;->a:Ljava/io/File;

    iput-object p3, p0, Lcn/aow/android/a$3;->b:Ljava/lang/String;

    iput-object p4, p0, Lcn/aow/android/a$3;->c:Ljava/lang/String;

    iput-object p5, p0, Lcn/aow/android/a$3;->d:Ljava/lang/String;

    iput-object p6, p0, Lcn/aow/android/a$3;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 3
    .parameter

    .prologue
    .line 310
    iget-object v0, p0, Lcn/aow/android/a$3;->f:Lcn/aow/android/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/aow/android/a;->b(Lcn/aow/android/a;Z)Z

    .line 311
    if-eqz p1, :cond_3

    .line 312
    iget-object v0, p0, Lcn/aow/android/a$3;->f:Lcn/aow/android/a;

    const-string v1, "report_downloadsuccess"

    invoke-virtual {v0, v1}, Lcn/aow/android/a;->b(Ljava/lang/String;)V

    .line 314
    iget-object v0, p0, Lcn/aow/android/a$3;->a:Ljava/io/File;

    invoke-static {v0}, Lcn/aow/android/d;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 316
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcn/aow/android/a$3;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 317
    iget-object v0, p0, Lcn/aow/android/a$3;->f:Lcn/aow/android/a;

    iget-object v1, p0, Lcn/aow/android/a$3;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcn/aow/android/a;->a(Lcn/aow/android/a;Ljava/lang/String;)Ljava/lang/String;

    .line 318
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcn/aow/android/a$3;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/aow/android/a$3;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 319
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 321
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 324
    :cond_0
    iget-object v1, p0, Lcn/aow/android/a$3;->a:Ljava/io/File;

    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 326
    iget-object v0, p0, Lcn/aow/android/a$3;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 328
    iget-object v0, p0, Lcn/aow/android/a$3;->f:Lcn/aow/android/a;

    invoke-static {v0}, Lcn/aow/android/a;->a(Lcn/aow/android/a;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "columns_jsv"

    iget-object v2, p0, Lcn/aow/android/a$3;->e:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 333
    iget-object v0, p0, Lcn/aow/android/a$3;->f:Lcn/aow/android/a;

    invoke-static {v0}, Lcn/aow/android/a;->a(Lcn/aow/android/a;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "columns_jfn"

    iget-object v2, p0, Lcn/aow/android/a$3;->f:Lcn/aow/android/a;

    invoke-static {v2}, Lcn/aow/android/a;->b(Lcn/aow/android/a;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 337
    iget-object v0, p0, Lcn/aow/android/a$3;->f:Lcn/aow/android/a;

    invoke-static {v0}, Lcn/aow/android/a;->c(Lcn/aow/android/a;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 339
    iget-object v0, p0, Lcn/aow/android/a$3;->f:Lcn/aow/android/a;

    iget-object v1, p0, Lcn/aow/android/a$3;->f:Lcn/aow/android/a;

    invoke-static {v1}, Lcn/aow/android/a;->d(Lcn/aow/android/a;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/aow/android/a$3;->f:Lcn/aow/android/a;

    invoke-static {v2}, Lcn/aow/android/a;->b(Lcn/aow/android/a;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcn/aow/android/a;->a(Lcn/aow/android/a;Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    :cond_1
    :goto_0
    return-void

    .line 343
    :cond_2
    iget-object v0, p0, Lcn/aow/android/a$3;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 344
    iget-object v0, p0, Lcn/aow/android/a$3;->f:Lcn/aow/android/a;

    const-string v1, "report_md5fail"

    invoke-virtual {v0, v1}, Lcn/aow/android/a;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 348
    :cond_3
    iget-object v0, p0, Lcn/aow/android/a$3;->f:Lcn/aow/android/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/aow/android/a;->a(Z)V

    .line 349
    iget-object v0, p0, Lcn/aow/android/a$3;->f:Lcn/aow/android/a;

    const-string v1, "report_downloadfail"

    invoke-virtual {v0, v1}, Lcn/aow/android/a;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public varargs a([Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 305
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-static {v0}, Lcn/aow/android/b;->a(Ljava/lang/String;)V

    .line 306
    return-void
.end method
