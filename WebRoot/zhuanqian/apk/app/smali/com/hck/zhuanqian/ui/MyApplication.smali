.class public Lcom/hck/zhuanqian/ui/MyApplication;
.super Landroid/app/Application;
.source "MyApplication.java"


# static fields
.field public static context:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 1

    .prologue
    .line 12
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 13
    const/4 v0, 0x1

    sput-boolean v0, Lcom/hck/zhuanqian/util/LogUtil;->isPrintLog:Z

    .line 14
    sput-object p0, Lcom/hck/zhuanqian/ui/MyApplication;->context:Landroid/content/Context;

    .line 15
    return-void
.end method
