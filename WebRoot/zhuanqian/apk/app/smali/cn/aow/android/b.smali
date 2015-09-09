.class public Lcn/aow/android/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "DOfferWall"

.field private static final b:Z = false

.field private static final c:Z = true

.field private static final d:I = 0x0

.field private static final e:I = 0x1

.field private static final f:I = 0x2

.field private static final g:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 22
    const-string v0, "DOfferWall"

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcn/aow/android/b;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 23
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 18
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcn/aow/android/b;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 19
    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 69
    const/4 v0, 0x3

    if-ne v0, p2, :cond_0

    .line 70
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/Throwable;)V
    .locals 0
    .parameter

    .prologue
    .line 44
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 46
    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 30
    const-string v0, "DOfferWall"

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lcn/aow/android/b;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 31
    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 26
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcn/aow/android/b;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 27
    return-void
.end method

.method public static c(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 49
    const-string v0, "DOfferWall"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 35
    const/4 v0, 0x2

    invoke-static {p0, p1, v0}, Lcn/aow/android/b;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 36
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 39
    const/4 v0, 0x3

    invoke-static {p0, p1, v0}, Lcn/aow/android/b;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 40
    return-void
.end method
