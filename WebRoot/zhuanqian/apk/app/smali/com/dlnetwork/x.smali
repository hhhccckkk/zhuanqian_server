.class Lcom/dlnetwork/x;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/dlnetwork/v;

.field private final synthetic b:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/dlnetwork/v;Landroid/app/AlertDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/dlnetwork/x;->a:Lcom/dlnetwork/v;

    iput-object p2, p0, Lcom/dlnetwork/x;->b:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/dlnetwork/x;->b:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method
