.class public Lcom/dc/wall/c/d;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/dc/wall/c/d;

.field private static b:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/dc/wall/c/d;->a:Lcom/dc/wall/c/d;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/dc/wall/c/d;->b:Landroid/content/Context;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 0

    sput-object p0, Lcom/dc/wall/c/d;->b:Landroid/content/Context;

    return-void
.end method
