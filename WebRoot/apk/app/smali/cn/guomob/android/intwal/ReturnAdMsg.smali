.class public Lcn/guomob/android/intwal/ReturnAdMsg;
.super Ljava/lang/Object;


# instance fields
.field private a:D

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(DILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcn/guomob/android/intwal/ReturnAdMsg;->a:D

    iput p3, p0, Lcn/guomob/android/intwal/ReturnAdMsg;->b:I

    iput-object p4, p0, Lcn/guomob/android/intwal/ReturnAdMsg;->d:Ljava/lang/String;

    iput-object p5, p0, Lcn/guomob/android/intwal/ReturnAdMsg;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getId()I
    .locals 1

    iget v0, p0, Lcn/guomob/android/intwal/ReturnAdMsg;->b:I

    return v0
.end method

.method public getOrder()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/guomob/android/intwal/ReturnAdMsg;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getScore()D
    .locals 2

    iget-wide v0, p0, Lcn/guomob/android/intwal/ReturnAdMsg;->a:D

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/guomob/android/intwal/ReturnAdMsg;->d:Ljava/lang/String;

    return-object v0
.end method
