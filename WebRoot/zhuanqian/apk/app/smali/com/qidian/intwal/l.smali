.class Lcom/qidian/intwal/l;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/qidian/intwal/k;


# direct methods
.method constructor <init>(Lcom/qidian/intwal/k;)V
    .locals 0

    iput-object p1, p0, Lcom/qidian/intwal/l;->a:Lcom/qidian/intwal/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/qidian/intwal/l;->a:Lcom/qidian/intwal/k;

    invoke-static {v0}, Lcom/qidian/intwal/k;->a(Lcom/qidian/intwal/k;)Lcom/qidian/intwal/IntWaWebLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qidian/intwal/IntWaWebLayout;->goback()V

    return-void
.end method
