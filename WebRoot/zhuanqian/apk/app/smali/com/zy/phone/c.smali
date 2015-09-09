.class final Lcom/zy/phone/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/zy/phone/AdInterface;

.field private final synthetic b:D


# direct methods
.method constructor <init>(Lcom/zy/phone/AdInterface;D)V
    .locals 0

    iput-object p1, p0, Lcom/zy/phone/c;->a:Lcom/zy/phone/AdInterface;

    iput-wide p2, p0, Lcom/zy/phone/c;->b:D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/zy/phone/c;->a:Lcom/zy/phone/AdInterface;

    #getter for: Lcom/zy/phone/AdInterface;->webview:Landroid/webkit/WebView;
    invoke-static {v0}, Lcom/zy/phone/AdInterface;->access$2(Lcom/zy/phone/AdInterface;)Landroid/webkit/WebView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "javascript:checkDownStep(\'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/zy/phone/c;->b:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\')"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method
