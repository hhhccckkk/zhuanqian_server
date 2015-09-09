.class final Lcom/zy/phone/d;
.super Landroid/database/ContentObserver;


# instance fields
.field final synthetic a:Lcom/zy/phone/AdInterface;


# direct methods
.method public constructor <init>(Lcom/zy/phone/AdInterface;)V
    .locals 1

    iput-object p1, p0, Lcom/zy/phone/d;->a:Lcom/zy/phone/AdInterface;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 1

    iget-object v0, p0, Lcom/zy/phone/d;->a:Lcom/zy/phone/AdInterface;

    #calls: Lcom/zy/phone/AdInterface;->queryDownloadStatus()V
    invoke-static {v0}, Lcom/zy/phone/AdInterface;->access$0(Lcom/zy/phone/AdInterface;)V

    return-void
.end method
