.class public Lcom/hck/zhuanqian/ui/HelpActivity;
.super Lcom/hck/zhuanqian/ui/BaseActivity;
.source "HelpActivity.java"


# static fields
.field private static final QUN_KEY:Ljava/lang/String; = "IY93wI9YZa0sVDSOt1mjttZ1gRPh5TV_"


# instance fields
.field private help:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/hck/zhuanqian/ui/BaseActivity;-><init>()V

    return-void
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 24
    const v0, 0x7f06000c

    invoke-virtual {p0, v0}, Lcom/hck/zhuanqian/ui/HelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/hck/zhuanqian/ui/HelpActivity;->help:Landroid/webkit/WebView;

    .line 25
    iget-object v0, p0, Lcom/hck/zhuanqian/ui/HelpActivity;->help:Landroid/webkit/WebView;

    const-string v1, "file:///android_asset/1.html"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 26
    return-void
.end method


# virtual methods
.method public jiaqun(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 29
    const-string v0, "IY93wI9YZa0sVDSOt1mjttZ1gRPh5TV_"

    invoke-virtual {p0, v0}, Lcom/hck/zhuanqian/ui/HelpActivity;->joinQQGroup(Ljava/lang/String;)Z

    .line 30
    return-void
.end method

.method public joinQQGroup(Ljava/lang/String;)Z
    .locals 4
    .parameter "key"

    .prologue
    .line 38
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 41
    .local v1, intent:Landroid/content/Intent;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mqqopensdkapi://bizAgent/qm/qr?url=http%3A%2F%2Fqm.qq.com%2Fcgi-bin%2Fqm%2Fqr%3Ffrom%3Dapp%26p%3Dandroid%26k%3D"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 41
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 40
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 44
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/hck/zhuanqian/ui/HelpActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    const/4 v2, 0x1

    .line 49
    :goto_0
    return v2

    .line 47
    :catch_0
    move-exception v0

    .line 49
    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 17
    invoke-super {p0, p1}, Lcom/hck/zhuanqian/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 18
    const/high16 v0, 0x7f03

    invoke-virtual {p0, v0}, Lcom/hck/zhuanqian/ui/HelpActivity;->setContentView(I)V

    .line 19
    invoke-direct {p0}, Lcom/hck/zhuanqian/ui/HelpActivity;->initView()V

    .line 20
    const-string v0, "\u5e2e\u52a9\u8bf4\u660e"

    invoke-virtual {p0, v0}, Lcom/hck/zhuanqian/ui/HelpActivity;->initTitle(Ljava/lang/String;)V

    .line 21
    return-void
.end method
