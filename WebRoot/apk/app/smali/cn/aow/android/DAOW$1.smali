.class Lcn/aow/android/DAOW$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/aow/android/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/aow/android/DAOW;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/aow/android/DAOW;


# direct methods
.method constructor <init>(Lcn/aow/android/DAOW;)V
    .locals 0
    .parameter

    .prologue
    .line 109
    iput-object p1, p0, Lcn/aow/android/DAOW$1;->a:Lcn/aow/android/DAOW;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcn/aow/android/DInterface;Lcn/aow/android/a$b;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 113
    iget-object v0, p0, Lcn/aow/android/DAOW$1;->a:Lcn/aow/android/DAOW;

    invoke-static {v0, p1}, Lcn/aow/android/DAOW;->a(Lcn/aow/android/DAOW;Lcn/aow/android/DInterface;)Lcn/aow/android/DInterface;

    .line 114
    sget-object v0, Lcn/aow/android/DAOW$2;->a:[I

    invoke-virtual {p2}, Lcn/aow/android/a$b;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 132
    :goto_0
    :pswitch_0
    return-void

    .line 119
    :pswitch_1
    iget-object v0, p0, Lcn/aow/android/DAOW$1;->a:Lcn/aow/android/DAOW;

    iget-object v1, p0, Lcn/aow/android/DAOW$1;->a:Lcn/aow/android/DAOW;

    invoke-static {v1}, Lcn/aow/android/DAOW;->a(Lcn/aow/android/DAOW;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/aow/android/DAOW;->show(Landroid/content/Context;)V

    .line 120
    iget-object v0, p0, Lcn/aow/android/DAOW$1;->a:Lcn/aow/android/DAOW;

    invoke-static {v0}, Lcn/aow/android/DAOW;->b(Lcn/aow/android/DAOW;)Lcn/aow/android/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/aow/android/a;->b()V

    goto :goto_0

    .line 114
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
