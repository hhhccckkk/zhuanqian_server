.class Lcn/aow/android/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/aow/android/a;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/aow/android/a;


# direct methods
.method constructor <init>(Lcn/aow/android/a;)V
    .locals 0
    .parameter

    .prologue
    .line 118
    iput-object p1, p0, Lcn/aow/android/a$1;->a:Lcn/aow/android/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 121
    iget-object v0, p0, Lcn/aow/android/a$1;->a:Lcn/aow/android/a;

    sget-object v1, Lcn/aow/android/a$b;->b:Lcn/aow/android/a$b;

    invoke-virtual {v0, v1}, Lcn/aow/android/a;->a(Lcn/aow/android/a$b;)V

    .line 122
    return-void
.end method
