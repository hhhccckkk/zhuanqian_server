.class public Lcn/guomob/android/intwal/b;
.super Ljava/lang/Object;


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/util/HashMap;

.field c:Lcn/guomob/android/intwal/ah;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/HashMap;Lcn/guomob/android/intwal/ah;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/guomob/android/intwal/b;->b:Ljava/util/HashMap;

    iput-object p1, p0, Lcn/guomob/android/intwal/b;->a:Ljava/lang/String;

    iput-object p2, p0, Lcn/guomob/android/intwal/b;->b:Ljava/util/HashMap;

    iput-object p3, p0, Lcn/guomob/android/intwal/b;->c:Lcn/guomob/android/intwal/ah;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcn/guomob/android/intwal/c;

    invoke-direct {v1, p0}, Lcn/guomob/android/intwal/c;-><init>(Lcn/guomob/android/intwal/b;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
