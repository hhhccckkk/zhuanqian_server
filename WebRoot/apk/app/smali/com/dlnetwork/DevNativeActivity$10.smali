.class Lcom/dlnetwork/DevNativeActivity$10;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/dlnetwork/DevNativeActivity;


# direct methods
.method constructor <init>(Lcom/dlnetwork/DevNativeActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/dlnetwork/DevNativeActivity$10;->a:Lcom/dlnetwork/DevNativeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/dlnetwork/DevNativeActivity$10;->a:Lcom/dlnetwork/DevNativeActivity;

    invoke-virtual {v0}, Lcom/dlnetwork/DevNativeActivity;->finish()V

    return-void
.end method
