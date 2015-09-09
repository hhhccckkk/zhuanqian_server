.class final Lcom/zy/phone/sdk/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lcom/zy/phone/sdk/SDKActivity;


# direct methods
.method private constructor <init>(Lcom/zy/phone/sdk/SDKActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/zy/phone/sdk/f;->a:Lcom/zy/phone/sdk/SDKActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zy/phone/sdk/SDKActivity;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zy/phone/sdk/f;-><init>(Lcom/zy/phone/sdk/SDKActivity;)V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method
