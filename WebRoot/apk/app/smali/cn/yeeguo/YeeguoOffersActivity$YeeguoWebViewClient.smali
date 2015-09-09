.class Lcn/yeeguo/YeeguoOffersActivity$YeeguoWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "YeeguoOffersActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/yeeguo/YeeguoOffersActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "YeeguoWebViewClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/yeeguo/YeeguoOffersActivity;


# direct methods
.method constructor <init>(Lcn/yeeguo/YeeguoOffersActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 130
    iput-object p1, p0, Lcn/yeeguo/YeeguoOffersActivity$YeeguoWebViewClient;->this$0:Lcn/yeeguo/YeeguoOffersActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .parameter "view"
    .parameter "url"

    .prologue
    .line 143
    iget-object v0, p0, Lcn/yeeguo/YeeguoOffersActivity$YeeguoWebViewClient;->this$0:Lcn/yeeguo/YeeguoOffersActivity;

    #getter for: Lcn/yeeguo/YeeguoOffersActivity;->progressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcn/yeeguo/YeeguoOffersActivity;->access$2(Lcn/yeeguo/YeeguoOffersActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 144
    iget-object v0, p0, Lcn/yeeguo/YeeguoOffersActivity$YeeguoWebViewClient;->this$0:Lcn/yeeguo/YeeguoOffersActivity;

    #getter for: Lcn/yeeguo/YeeguoOffersActivity;->progressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcn/yeeguo/YeeguoOffersActivity;->access$2(Lcn/yeeguo/YeeguoOffersActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->bringToFront()V

    .line 145
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 146
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "view"
    .parameter "url"
    .parameter "favicon"

    .prologue
    .line 134
    iget-object v0, p0, Lcn/yeeguo/YeeguoOffersActivity$YeeguoWebViewClient;->this$0:Lcn/yeeguo/YeeguoOffersActivity;

    #getter for: Lcn/yeeguo/YeeguoOffersActivity;->progressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcn/yeeguo/YeeguoOffersActivity;->access$2(Lcn/yeeguo/YeeguoOffersActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 135
    iget-object v0, p0, Lcn/yeeguo/YeeguoOffersActivity$YeeguoWebViewClient;->this$0:Lcn/yeeguo/YeeguoOffersActivity;

    #getter for: Lcn/yeeguo/YeeguoOffersActivity;->progressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcn/yeeguo/YeeguoOffersActivity;->access$2(Lcn/yeeguo/YeeguoOffersActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->bringToFront()V

    .line 136
    const-string v0, "onPageStarted"

    invoke-static {v0, p2}, Lcn/yeeguo/YeeguoLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 138
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 13
    .parameter "view"
    .parameter "url"

    .prologue
    .line 150
    const-string v9, "shouldOverrideUrlLoading"

    invoke-static {v9, p2}, Lcn/yeeguo/YeeguoLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    const-string v9, "yeeguo:return"

    invoke-virtual {p2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 152
    iget-object v9, p0, Lcn/yeeguo/YeeguoOffersActivity$YeeguoWebViewClient;->this$0:Lcn/yeeguo/YeeguoOffersActivity;

    invoke-virtual {v9}, Lcn/yeeguo/YeeguoOffersActivity;->finish()V

    .line 153
    const/4 v9, 0x1

    .line 200
    :goto_0
    return v9

    .line 154
    :cond_0
    const-string v9, "yeeguo:open"

    invoke-virtual {p2, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 156
    :try_start_0
    const-string v9, ":"

    invoke-virtual {p2, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 157
    .local v1, arrUrl:[Ljava/lang/String;
    const/4 v9, 0x2

    aget-object v7, v1, v9

    .line 158
    .local v7, packageName:Ljava/lang/String;
    iget-object v9, p0, Lcn/yeeguo/YeeguoOffersActivity$YeeguoWebViewClient;->this$0:Lcn/yeeguo/YeeguoOffersActivity;

    invoke-static {v9, v7}, Lcn/yeeguo/YeeguoUtil;->openApp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v9

    .line 159
    if-nez v9, :cond_1

    .line 160
    iget-object v9, p0, Lcn/yeeguo/YeeguoOffersActivity$YeeguoWebViewClient;->this$0:Lcn/yeeguo/YeeguoOffersActivity;

    #getter for: Lcn/yeeguo/YeeguoOffersActivity;->mActivity:Landroid/app/Activity;
    invoke-static {v9}, Lcn/yeeguo/YeeguoOffersActivity;->access$3(Lcn/yeeguo/YeeguoOffersActivity;)Landroid/app/Activity;

    move-result-object v9

    const-string v10, "\u8be5\u5e94\u7528\u4e0d\u5b58\u5728"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v9

    .line 161
    invoke-virtual {v9}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    .end local v1           #arrUrl:[Ljava/lang/String;
    .end local v7           #packageName:Ljava/lang/String;
    :cond_1
    :goto_1
    const/4 v9, 0x1

    goto :goto_0

    .line 163
    :catch_0
    move-exception v4

    .line 164
    .local v4, e:Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 167
    .end local v4           #e:Ljava/lang/Exception;
    :cond_2
    const-string v9, "?a=download&"

    invoke-virtual {p2, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 168
    invoke-static {p2}, Lcn/yeeguo/YeeguoUtil;->paramURL(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v8

    .line 169
    .local v8, urls:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lcn/yeeguo/YeeguoAdvs;

    invoke-direct {v0}, Lcn/yeeguo/YeeguoAdvs;-><init>()V

    .line 170
    .local v0, advs:Lcn/yeeguo/YeeguoAdvs;
    const-string v2, ""

    .line 173
    .local v2, data:Ljava/lang/String;
    :try_start_1
    const-string v9, "data"

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const-string v10, "utf-8"

    invoke-static {v9, v10}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 179
    :goto_2
    const-string v3, ""

    .line 181
    .local v3, downurl:Ljava/lang/String;
    :try_start_2
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 182
    .local v6, json:Lorg/json/JSONObject;
    const-string v9, "advid"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcn/yeeguo/YeeguoAdvs;->setAid(Ljava/lang/String;)V

    .line 183
    const-string v9, "advname"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcn/yeeguo/YeeguoAdvs;->setAppname(Ljava/lang/String;)V

    .line 184
    const-string v9, "package"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcn/yeeguo/YeeguoAdvs;->setPackageName(Ljava/lang/String;)V

    .line 185
    const-string v9, "token"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcn/yeeguo/YeeguoAdvs;->setToken(Ljava/lang/String;)V

    .line 186
    const-string v9, "comrequire"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcn/yeeguo/YeeguoAdvs;->setComplete_require(Ljava/lang/String;)V

    .line 187
    const-string v9, "compage"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcn/yeeguo/YeeguoAdvs;->setComplete_page(Ljava/lang/String;)V

    .line 188
    const-string v9, "download"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v3

    .line 195
    .end local v6           #json:Lorg/json/JSONObject;
    :goto_3
    new-instance v9, Lcn/yeeguo/YeeguoDownloadTask;

    iget-object v10, p0, Lcn/yeeguo/YeeguoOffersActivity$YeeguoWebViewClient;->this$0:Lcn/yeeguo/YeeguoOffersActivity;

    .line 196
    invoke-virtual {v0}, Lcn/yeeguo/YeeguoAdvs;->getAid()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    iget-object v12, p0, Lcn/yeeguo/YeeguoOffersActivity$YeeguoWebViewClient;->this$0:Lcn/yeeguo/YeeguoOffersActivity;

    #getter for: Lcn/yeeguo/YeeguoOffersActivity;->yeeguoCheckPage:Lcn/yeeguo/YeeguoCheckPage;
    invoke-static {v12}, Lcn/yeeguo/YeeguoOffersActivity;->access$4(Lcn/yeeguo/YeeguoOffersActivity;)Lcn/yeeguo/YeeguoCheckPage;

    move-result-object v12

    .line 195
    invoke-direct {v9, v10, v11, v0, v12}, Lcn/yeeguo/YeeguoDownloadTask;-><init>(Landroid/content/Context;ILcn/yeeguo/YeeguoAdvs;Lcn/yeeguo/YeeguoCheckPage;)V

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    .line 197
    aput-object v3, v10, v11

    invoke-virtual {v9, v10}, Lcn/yeeguo/YeeguoDownloadTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 198
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 174
    .end local v3           #downurl:Ljava/lang/String;
    :catch_1
    move-exception v5

    .line 176
    .local v5, e1:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v5}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_2

    .line 189
    .end local v5           #e1:Ljava/io/UnsupportedEncodingException;
    .restart local v3       #downurl:Ljava/lang/String;
    :catch_2
    move-exception v4

    .line 191
    .local v4, e:Lorg/json/JSONException;
    invoke-virtual {v4}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_3

    .line 200
    .end local v0           #advs:Lcn/yeeguo/YeeguoAdvs;
    .end local v2           #data:Ljava/lang/String;
    .end local v3           #downurl:Ljava/lang/String;
    .end local v4           #e:Lorg/json/JSONException;
    .end local v8           #urls:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v9

    goto/16 :goto_0
.end method
