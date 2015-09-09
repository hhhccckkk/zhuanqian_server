.class final Lnet/youmi/android/a/a/g/c/a/d;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/http/Header;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/youmi/android/a/a/g/c/a/d;->a:Ljava/lang/String;

    iput-object p2, p0, Lnet/youmi/android/a/a/g/c/a/d;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getElements()[Lorg/apache/http/HeaderElement;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/a/a/g/c/a/d;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/a/a/g/c/a/d;->a:Ljava/lang/String;

    return-object v0
.end method
