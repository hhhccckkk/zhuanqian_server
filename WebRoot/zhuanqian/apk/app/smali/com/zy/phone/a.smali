.class final Lcom/zy/phone/a;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/zy/phone/AdInterface;


# direct methods
.method constructor <init>(Lcom/zy/phone/AdInterface;)V
    .locals 0

    iput-object p1, p0, Lcom/zy/phone/a;->a:Lcom/zy/phone/AdInterface;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/zy/phone/a;->a:Lcom/zy/phone/AdInterface;

    #calls: Lcom/zy/phone/AdInterface;->queryDownloadStatus()V
    invoke-static {v0}, Lcom/zy/phone/AdInterface;->access$0(Lcom/zy/phone/AdInterface;)V

    return-void
.end method
