.class public Lcom/datouniao/AdPublisher/y;
.super Ljava/lang/Object;


# direct methods
.method protected static a()Ljava/util/Map;
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "UPDATE_P_FAILED"

    const-string v2, "\u65e0\u6cd5\u66f4\u65b0\u91d1\u5e01"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SPEND_P_FAILED"

    const-string v2, "\u6d88\u8d39\u91d1\u5e01\u5931\u8d25"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "AWARD_P_FAILED"

    const-string v2, "\u5956\u52b1\u91d1\u5e01\u5931\u8d25"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "NEW_VARSION_UPDATE"

    const-string v2, "\u65b0\u7248\u672c\u63d0\u793a"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "NEWEST_VARSION"

    const-string v2, "\u60a8\u4f7f\u7528\u7684\u5df2\u7ecf\u662f\u6700\u65b0\u7248\u672c"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "new_version"

    const-string v2, "\u6709\u65b0\u7248\u672c\uff08"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "version_is_found"

    const-string v2, "\uff09\uff0c\u662f\u5426\u4e0b\u8f7d\uff1f"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "download"

    const-string v2, "\u4e0b\u8f7d"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "next_time"

    const-string v2, "\u4e0b\u6b21\u518d\u8bf4"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "getting_filename"

    const-string v2, "\u6b63\u5728\u83b7\u53d6\u4e0b\u8f7d\u8d44\u6e90"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "DOWNLOAD_FAILED"

    const-string v2, "\u4e0b\u8f7d\u5931\u8d25\uff0c\u8bf7\u91cd\u65b0\u4e0b\u8f7d"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "END_DOWNLOAD_AND_CLICK_INSTALL"

    const-string v2, "\u4e0b\u8f7d\u5b8c\u6210\uff0c\u70b9\u51fb\u5b89\u88c5"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "DOWNLOAD_COMPLETE"

    const-string v2, "\u4e0b\u8f7d\u5b8c\u6210\uff01"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "new_app_is_found"

    const-string v2, "\u53d1\u73b0\u65b0\u5e94\u7528"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "new_app_install"

    const-string v2, "\u60a8\u6709\u65b0\u5e94\u7528\u5b89\u88c5\uff0c\u70b9\u51fb\u67e5\u770b\uff01"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "new_app"

    const-string v2, "\u65b0\u5b89\u88c5\u5e94\u7528"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "downloading"

    const-string v2, "\u6b63\u5728\u4e0b\u8f7d"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "finish_download"

    const-string v2, "\u6b63\u5728\u4e0b\u8f7d\uff0c\u5df2\u5b8c\u6210:"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "exception"

    const-string v2, "\u7a0b\u5e8f\u5f02\u5e38\uff1a"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "reminder"

    const-string v2, "\u6e29\u99a8\u63d0\u793a"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "app_already_exists"

    const-string v2, "\u60a8\u7684\u624b\u673a\u5df2\u4e0b\u8f7d\u8fc7\u8be5\u5e94\u7528\u4e86\uff0c\u60a8\u53ef\u4ee5\u76f4\u63a5\u5b89\u88c5\u6216\u91cd\u65b0\u4e0b\u8f7d\uff01"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "install"

    const-string v2, "\u5b89\u88c5"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "install_ok"

    const-string v2, "\u5b89\u88c5\u5b8c\u6210"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "download_again"

    const-string v2, "\u91cd\u65b0\u4e0b\u8f7d"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "prepare_to_download"

    const-string v2, "\u6b63\u5728\u51c6\u5907\u4e0b\u8f7d,\u8bf7\u7a0d\u5019..."

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "cancel"

    const-string v2, "\u53d6\u6d88"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "waitting_for_download"

    const-string v2, "\u6b63\u5728\u4e0b\u8f7d,\u8bf7\u7a0d\u5019..."

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "network_links_failure"

    const-string v2, "\u7f51\u7edc\u8fde\u63a5\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u3002"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ok"

    const-string v2, "\u786e\u5b9a"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "close"

    const-string v2, "\u5173\u95ed"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "new_app_list"

    const-string v2, "\u65b0\u5b89\u88c5\u5e94\u7528\u5217\u8868"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "message_title"

    const-string v2, "\u63d0\u793a"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "wrong_url"

    const-string v2, "\u4e0b\u8f7d\u5730\u5740\u672a\u6b63\u786e\u83b7\u53d6\u5230\uff01"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "VirtualMoney"

    const-string v2, "\u91d1\u5e01"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "download_failed"

    const-string v2, "\u4e0b\u8f7d\u4e2d\u65ad\uff01\u5df2\u5b8c\u6210%"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ad_version"

    const-string v2, "\u7248\u672c:"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ad_size"

    const-string v2, "\u5927\u5c0f:"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Try"

    const-string v2, "\u8bd5\u8bd5\u770b"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Other"

    const-string v2, "\u6362\u4e00\u4e2a"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
