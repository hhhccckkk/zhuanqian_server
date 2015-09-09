.class Lcn/yeeguo/YeeguoHttpManage$1;
.super Ljava/lang/Object;
.source "YeeguoHttpManage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/yeeguo/YeeguoHttpManage;->asynRequest(Landroid/content/Context;Ljava/lang/String;Ljava/util/LinkedHashMap;)J
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/yeeguo/YeeguoHttpManage;

.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic val$flag:J

.field private final synthetic val$map:Ljava/util/LinkedHashMap;

.field private final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcn/yeeguo/YeeguoHttpManage;Landroid/content/Context;Ljava/lang/String;Ljava/util/LinkedHashMap;J)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcn/yeeguo/YeeguoHttpManage$1;->this$0:Lcn/yeeguo/YeeguoHttpManage;

    iput-object p2, p0, Lcn/yeeguo/YeeguoHttpManage$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcn/yeeguo/YeeguoHttpManage$1;->val$url:Ljava/lang/String;

    iput-object p4, p0, Lcn/yeeguo/YeeguoHttpManage$1;->val$map:Ljava/util/LinkedHashMap;

    iput-wide p5, p0, Lcn/yeeguo/YeeguoHttpManage$1;->val$flag:J

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 93
    :try_start_0
    iget-object v0, p0, Lcn/yeeguo/YeeguoHttpManage$1;->this$0:Lcn/yeeguo/YeeguoHttpManage;

    iget-object v1, p0, Lcn/yeeguo/YeeguoHttpManage$1;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcn/yeeguo/YeeguoHttpManage$1;->val$url:Ljava/lang/String;

    iget-object v3, p0, Lcn/yeeguo/YeeguoHttpManage$1;->val$map:Ljava/util/LinkedHashMap;

    iget-wide v4, p0, Lcn/yeeguo/YeeguoHttpManage$1;->val$flag:J

    invoke-virtual/range {v0 .. v5}, Lcn/yeeguo/YeeguoHttpManage;->synRequest(Landroid/content/Context;Ljava/lang/String;Ljava/util/LinkedHashMap;J)Ljava/lang/String;

    move-result-object v7

    .line 94
    .local v7, result:Ljava/lang/String;
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 95
    iget-object v0, p0, Lcn/yeeguo/YeeguoHttpManage$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcn/yeeguo/YeeguoHttpManage$1;->val$url:Ljava/lang/String;

    iget-wide v2, p0, Lcn/yeeguo/YeeguoHttpManage$1;->val$flag:J

    invoke-static {v0, v1, v7, v2, v3}, Lcn/yeeguo/YeeguoFilterUtil;->filterReceiveHttp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    .end local v7           #result:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 97
    :catch_0
    move-exception v6

    .line 98
    .local v6, e:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
