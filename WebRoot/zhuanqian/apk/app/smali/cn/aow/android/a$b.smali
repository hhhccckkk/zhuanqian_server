.class public final enum Lcn/aow/android/a$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/aow/android/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcn/aow/android/a$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcn/aow/android/a$b;

.field public static final enum b:Lcn/aow/android/a$b;

.field public static final enum c:Lcn/aow/android/a$b;

.field public static final enum d:Lcn/aow/android/a$b;

.field private static final synthetic e:[Lcn/aow/android/a$b;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 69
    new-instance v0, Lcn/aow/android/a$b;

    const-string v1, "DEFAULT"

    invoke-direct {v0, v1, v2}, Lcn/aow/android/a$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/aow/android/a$b;->a:Lcn/aow/android/a$b;

    new-instance v0, Lcn/aow/android/a$b;

    const-string v1, "SHOW"

    invoke-direct {v0, v1, v3}, Lcn/aow/android/a$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/aow/android/a$b;->b:Lcn/aow/android/a$b;

    new-instance v0, Lcn/aow/android/a$b;

    const-string v1, "POINT"

    invoke-direct {v0, v1, v4}, Lcn/aow/android/a$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/aow/android/a$b;->c:Lcn/aow/android/a$b;

    new-instance v0, Lcn/aow/android/a$b;

    const-string v1, "CONSUME"

    invoke-direct {v0, v1, v5}, Lcn/aow/android/a$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/aow/android/a$b;->d:Lcn/aow/android/a$b;

    .line 68
    const/4 v0, 0x4

    new-array v0, v0, [Lcn/aow/android/a$b;

    sget-object v1, Lcn/aow/android/a$b;->a:Lcn/aow/android/a$b;

    aput-object v1, v0, v2

    sget-object v1, Lcn/aow/android/a$b;->b:Lcn/aow/android/a$b;

    aput-object v1, v0, v3

    sget-object v1, Lcn/aow/android/a$b;->c:Lcn/aow/android/a$b;

    aput-object v1, v0, v4

    sget-object v1, Lcn/aow/android/a$b;->d:Lcn/aow/android/a$b;

    aput-object v1, v0, v5

    sput-object v0, Lcn/aow/android/a$b;->e:[Lcn/aow/android/a$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/aow/android/a$b;
    .locals 1
    .parameter "name"

    .prologue
    .line 68
    const-class v0, Lcn/aow/android/a$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcn/aow/android/a$b;

    return-object v0
.end method

.method public static values()[Lcn/aow/android/a$b;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcn/aow/android/a$b;->e:[Lcn/aow/android/a$b;

    invoke-virtual {v0}, [Lcn/aow/android/a$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/aow/android/a$b;

    return-object v0
.end method
