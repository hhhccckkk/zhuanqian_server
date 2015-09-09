.class final Lcom/jy/func/t/h$1;
.super Lcom/jy/func/w/h;
.source "SoftTool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jy/func/t/h;->a(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;Landroid/widget/Button;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic cA:Landroid/widget/Button;

.field private final synthetic cB:Ljava/lang/String;

.field private final synthetic cC:I

.field private final synthetic cz:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/widget/Button;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jy/func/t/h$1;->cz:Landroid/content/Context;

    iput-object p2, p0, Lcom/jy/func/t/h$1;->cA:Landroid/widget/Button;

    iput-object p3, p0, Lcom/jy/func/t/h$1;->cB:Ljava/lang/String;

    iput p4, p0, Lcom/jy/func/t/h$1;->cC:I

    .line 134
    invoke-direct {p0}, Lcom/jy/func/w/h;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I[Lorg/apache/http/Header;Ljava/lang/Throwable;Lorg/json/JSONObject;)V
    .locals 0
    .parameter "statusCode"
    .parameter "headers"
    .parameter "throwable"
    .parameter "errorResponse"

    .prologue
    .line 177
    invoke-super {p0, p1, p2, p3, p4}, Lcom/jy/func/w/h;->a(I[Lorg/apache/http/Header;Ljava/lang/Throwable;Lorg/json/JSONObject;)V

    .line 180
    return-void
.end method

.method public final a(I[Lorg/apache/http/Header;Lorg/json/JSONObject;)V
    .locals 4
    .parameter "statusCode"
    .parameter "headers"
    .parameter "response"

    .prologue
    const/4 v3, 0x1

    .line 138
    invoke-super {p0, p1, p2, p3}, Lcom/jy/func/w/h;->a(I[Lorg/apache/http/Header;Lorg/json/JSONObject;)V

    .line 149
    :try_start_0
    const-string v0, "code"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 151
    const-string v1, "200"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/jy/func/t/h$1;->cz:Landroid/content/Context;

    const-string v1, "\u4f53\u9a8c\u6210\u529f,\u53ef\u4ee5\u7ee7\u7eed\u5176\u4ed6\u4efb\u52a1~"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 154
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 155
    iget-object v0, p0, Lcom/jy/func/t/h$1;->cA:Landroid/widget/Button;

    const-string v1, "\u4efb\u52a1\u5b8c\u6210"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 156
    iget-object v0, p0, Lcom/jy/func/t/h$1;->cz:Landroid/content/Context;

    iget-object v1, p0, Lcom/jy/func/t/h$1;->cB:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/jy/func/t/h;->c(Landroid/content/Context;Ljava/lang/String;I)V

    .line 157
    iget v0, p0, Lcom/jy/func/t/h$1;->cC:I

    if-ne v0, v3, :cond_1

    .line 159
    iget-object v0, p0, Lcom/jy/func/t/h$1;->cz:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.jiongyou.app.action.TASKSUCCESSS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "MSG_WHAT"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 172
    :cond_0
    :goto_0
    return-void

    .line 163
    :cond_1
    iget-object v0, p0, Lcom/jy/func/t/h$1;->cz:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.jiongyou.app.action.QIANDAOSUCCESSS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "MSG_WHAT"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 168
    :catch_0
    move-exception v0

    .line 170
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
