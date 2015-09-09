.class public Lcom/zy/phone/sdk/SDKActivity;
.super Landroid/app/Activity;


# static fields
.field private static d:Landroid/content/SharedPreferences;


# instance fields
.field private a:Landroid/webkit/WebView;

.field private b:Lcom/zy/phone/MyProgressBar;

.field private c:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Lcom/zy/phone/sdk/f;

.field private j:Z

.field private k:Z

.field private l:Landroid/os/Handler;

.field private final m:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const-string v0, "?Token="

    iput-object v0, p0, Lcom/zy/phone/sdk/SDKActivity;->e:Ljava/lang/String;

    const-string v0, "&AppCode="

    iput-object v0, p0, Lcom/zy/phone/sdk/SDKActivity;->f:Ljava/lang/String;

    const-string v0, "&Version="

    iput-object v0, p0, Lcom/zy/phone/sdk/SDKActivity;->g:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/zy/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zy/phone/sdk/SDKActivity;->h:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zy/phone/sdk/SDKActivity;->j:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zy/phone/sdk/SDKActivity;->k:Z

    new-instance v0, Lcom/zy/phone/sdk/a;

    invoke-direct {v0, p0}, Lcom/zy/phone/sdk/a;-><init>(Lcom/zy/phone/sdk/SDKActivity;)V

    iput-object v0, p0, Lcom/zy/phone/sdk/SDKActivity;->l:Landroid/os/Handler;

    new-instance v0, Lcom/zy/phone/sdk/b;

    invoke-direct {v0, p0}, Lcom/zy/phone/sdk/b;-><init>(Lcom/zy/phone/sdk/SDKActivity;)V

    iput-object v0, p0, Lcom/zy/phone/sdk/SDKActivity;->m:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic a()Landroid/content/SharedPreferences;
    .locals 1

    sget-object v0, Lcom/zy/phone/sdk/SDKActivity;->d:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic a(Lcom/zy/phone/sdk/SDKActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zy/phone/sdk/SDKActivity;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/zy/phone/sdk/SDKActivity;Lcom/zy/phone/sdk/f;)V
    .locals 0

    iput-object p1, p0, Lcom/zy/phone/sdk/SDKActivity;->i:Lcom/zy/phone/sdk/f;

    return-void
.end method

.method static synthetic a(Lcom/zy/phone/sdk/SDKActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zy/phone/sdk/SDKActivity;->c:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/zy/phone/sdk/SDKActivity;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/zy/phone/sdk/SDKActivity;->k:Z

    return-void
.end method

.method private b()I
    .locals 1

    invoke-virtual {p0}, Lcom/zy/phone/sdk/SDKActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/zy/phone/sdk/SDKActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zy/phone/sdk/SDKActivity;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/zy/phone/sdk/SDKActivity;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/zy/phone/sdk/SDKActivity;->j:Z

    return-void
.end method

.method static synthetic c(Lcom/zy/phone/sdk/SDKActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zy/phone/sdk/SDKActivity;->g:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/zy/phone/sdk/SDKActivity;)Landroid/webkit/WebView;
    .locals 1

    iget-object v0, p0, Lcom/zy/phone/sdk/SDKActivity;->a:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic e(Lcom/zy/phone/sdk/SDKActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zy/phone/sdk/SDKActivity;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/zy/phone/sdk/SDKActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/zy/phone/sdk/SDKActivity;->k:Z

    return v0
.end method

.method static synthetic g(Lcom/zy/phone/sdk/SDKActivity;)Lcom/zy/phone/sdk/f;
    .locals 1

    iget-object v0, p0, Lcom/zy/phone/sdk/SDKActivity;->i:Lcom/zy/phone/sdk/f;

    return-object v0
.end method

.method static synthetic h(Lcom/zy/phone/sdk/SDKActivity;)Lcom/zy/phone/MyProgressBar;
    .locals 1

    iget-object v0, p0, Lcom/zy/phone/sdk/SDKActivity;->b:Lcom/zy/phone/MyProgressBar;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    const/16 v6, 0x11

    const/4 v2, -0x1

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v5}, Lcom/zy/phone/sdk/SDKActivity;->requestWindowFeature(I)Z

    invoke-virtual {p0, v5}, Lcom/zy/phone/sdk/SDKActivity;->setRequestedOrientation(I)V

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iput v6, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/webkit/WebView;

    invoke-direct {v1, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/zy/phone/sdk/SDKActivity;->a:Landroid/webkit/WebView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcom/zy/phone/sdk/SDKActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v2, v1}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/zy/phone/sdk/SDKActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    iget-object v1, p0, Lcom/zy/phone/sdk/SDKActivity;->a:Landroid/webkit/WebView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setVisibility(I)V

    iget-object v1, p0, Lcom/zy/phone/sdk/SDKActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v1, Lcom/zy/phone/MyProgressBar;

    invoke-direct {v1, p0}, Lcom/zy/phone/MyProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/zy/phone/sdk/SDKActivity;->b:Lcom/zy/phone/MyProgressBar;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0}, Lcom/zy/phone/sdk/SDKActivity;->b()I

    move-result v2

    div-int/lit8 v2, v2, 0x7

    invoke-direct {p0}, Lcom/zy/phone/sdk/SDKActivity;->b()I

    move-result v3

    div-int/lit8 v3, v3, 0x7

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcom/zy/phone/sdk/SDKActivity;->b:Lcom/zy/phone/MyProgressBar;

    invoke-virtual {v2, v1}, Lcom/zy/phone/MyProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iput v6, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget-object v1, p0, Lcom/zy/phone/sdk/SDKActivity;->b:Lcom/zy/phone/MyProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p0, v0}, Lcom/zy/phone/sdk/SDKActivity;->setContentView(Landroid/view/View;)V

    const-string v0, "zy_init"

    invoke-virtual {p0, v0, v4}, Lcom/zy/phone/sdk/SDKActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/zy/phone/sdk/SDKActivity;->d:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/zy/phone/sdk/SDKActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zy/phone/sdk/SDKActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v0, p0, Lcom/zy/phone/sdk/SDKActivity;->a:Landroid/webkit/WebView;

    new-instance v1, Lcom/zy/phone/AdInterface;

    iget-object v2, p0, Lcom/zy/phone/sdk/SDKActivity;->a:Landroid/webkit/WebView;

    iget-object v3, p0, Lcom/zy/phone/sdk/SDKActivity;->l:Landroid/os/Handler;

    invoke-direct {v1, p0, v2, v3}, Lcom/zy/phone/AdInterface;-><init>(Landroid/app/Activity;Landroid/webkit/WebView;Landroid/os/Handler;)V

    const-string v2, "android"

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zy/phone/sdk/SDKActivity;->a:Landroid/webkit/WebView;

    new-instance v1, Lcom/zy/phone/sdk/c;

    invoke-direct {v1, p0, v4}, Lcom/zy/phone/sdk/c;-><init>(Lcom/zy/phone/sdk/SDKActivity;B)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/zy/phone/sdk/SDKActivity;->a:Landroid/webkit/WebView;

    new-instance v1, Lcom/zy/phone/sdk/d;

    invoke-direct {v1, p0, v4}, Lcom/zy/phone/sdk/d;-><init>(Lcom/zy/phone/sdk/SDKActivity;B)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object v0, p0, Lcom/zy/phone/sdk/SDKActivity;->a:Landroid/webkit/WebView;

    new-instance v1, Lcom/zy/phone/sdk/e;

    invoke-direct {v1, p0, v4}, Lcom/zy/phone/sdk/e;-><init>(Lcom/zy/phone/sdk/SDKActivity;B)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/zy/phone/sdk/SDKActivity;->h:Ljava/lang/String;

    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/zy/phone/service/ZYService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v1, Lcom/zy/phone/sdk/f;

    invoke-direct {v1, p0, v4}, Lcom/zy/phone/sdk/f;-><init>(Lcom/zy/phone/sdk/SDKActivity;B)V

    iput-object v1, p0, Lcom/zy/phone/sdk/SDKActivity;->i:Lcom/zy/phone/sdk/f;

    invoke-virtual {p0, v0, v1, v5}, Lcom/zy/phone/sdk/SDKActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/zy/phone/sdk/SDKActivity;->k:Z

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zy/phone/sdk/SDKActivity;->m:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/zy/phone/sdk/SDKActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Lcom/zy/phone/net/b;

    iget-object v1, p0, Lcom/zy/phone/sdk/SDKActivity;->l:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/zy/phone/net/b;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    invoke-virtual {v0}, Lcom/zy/phone/net/b;->start()V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    iget-boolean v0, p0, Lcom/zy/phone/sdk/SDKActivity;->k:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zy/phone/sdk/SDKActivity;->i:Lcom/zy/phone/sdk/f;

    invoke-virtual {p0, v0}, Lcom/zy/phone/sdk/SDKActivity;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zy/phone/sdk/SDKActivity;->k:Z

    :cond_0
    iget-object v0, p0, Lcom/zy/phone/sdk/SDKActivity;->m:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zy/phone/sdk/SDKActivity;->m:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/zy/phone/sdk/SDKActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v2, 0x4

    const/4 v0, 0x1

    if-ne p1, v2, :cond_1

    iget-boolean v1, p0, Lcom/zy/phone/sdk/SDKActivity;->j:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/zy/phone/sdk/SDKActivity;->finish()V

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-ne p1, v2, :cond_2

    iget-boolean v1, p0, Lcom/zy/phone/sdk/SDKActivity;->j:Z

    if-nez v1, :cond_2

    iput-boolean v0, p0, Lcom/zy/phone/sdk/SDKActivity;->j:Z

    iget-object v1, p0, Lcom/zy/phone/sdk/SDKActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->goBack()V

    sget-object v1, Lcom/zy/phone/sdk/SDKActivity;->d:Landroid/content/SharedPreferences;

    const-string v2, "tasktime"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "\u4f53\u9a8c\u8fd8\u6ca1\u6709\u5230\u65f6\u95f4\u54e6"

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    sget-object v1, Lcom/zy/phone/sdk/SDKActivity;->d:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "tasktime"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    :cond_2
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 1

    iget-object v0, p0, Lcom/zy/phone/sdk/SDKActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->reload()V

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method
