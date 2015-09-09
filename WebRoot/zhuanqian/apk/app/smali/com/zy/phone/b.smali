.class final Lcom/zy/phone/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/zy/phone/AdInterface;


# direct methods
.method constructor <init>(Lcom/zy/phone/AdInterface;)V
    .locals 0

    iput-object p1, p0, Lcom/zy/phone/b;->a:Lcom/zy/phone/AdInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/zy/phone/b;->a:Lcom/zy/phone/AdInterface;

    #getter for: Lcom/zy/phone/AdInterface;->activity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/zy/phone/AdInterface;->access$1(Lcom/zy/phone/AdInterface;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
