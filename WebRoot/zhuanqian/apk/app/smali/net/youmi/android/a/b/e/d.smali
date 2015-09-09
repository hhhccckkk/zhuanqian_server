.class public Lnet/youmi/android/a/b/e/d;
.super Lnet/youmi/android/a/b/e/c;


# static fields
.field public static final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lnet/youmi/android/a/b/e/d;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/youmi/android/a/b/e/d;->b:Ljava/lang/String;

    return-void
.end method

.method private static a()Ljava/lang/String;
    .locals 1

    const-string v0, "Test"

    return-object v0
.end method
