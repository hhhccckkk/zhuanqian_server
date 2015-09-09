.class Lcom/dlnetwork/DevNativeActivity$11;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/dlnetwork/DevNativeActivity;


# direct methods
.method constructor <init>(Lcom/dlnetwork/DevNativeActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/dlnetwork/DevNativeActivity$11;->a:Lcom/dlnetwork/DevNativeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/dlnetwork/DevNativeActivity$11;->a:Lcom/dlnetwork/DevNativeActivity;

    invoke-virtual {v0}, Lcom/dlnetwork/DevNativeActivity;->finish()V

    return-void
.end method
