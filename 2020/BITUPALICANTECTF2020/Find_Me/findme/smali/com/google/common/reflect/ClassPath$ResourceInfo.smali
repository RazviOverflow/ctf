.class public Lcom/google/common/reflect/ClassPath$ResourceInfo;
.super Ljava/lang/Object;
.source "ClassPath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/reflect/ClassPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResourceInfo"
.end annotation


# instance fields
.field final loader:Ljava/lang/ClassLoader;

.field private final resourceName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V
    .locals 1
    .param p1, "resourceName"    # Ljava/lang/String;
    .param p2, "loader"    # Ljava/lang/ClassLoader;

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/common/reflect/ClassPath$ResourceInfo;->resourceName:Ljava/lang/String;

    .line 168
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassLoader;

    iput-object v0, p0, Lcom/google/common/reflect/ClassPath$ResourceInfo;->loader:Ljava/lang/ClassLoader;

    .line 169
    return-void
.end method

.method static of(Ljava/lang/String;Ljava/lang/ClassLoader;)Lcom/google/common/reflect/ClassPath$ResourceInfo;
    .locals 1
    .param p0, "resourceName"    # Ljava/lang/String;
    .param p1, "loader"    # Ljava/lang/ClassLoader;

    .line 159
    const-string v0, ".class"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    new-instance v0, Lcom/google/common/reflect/ClassPath$ClassInfo;

    invoke-direct {v0, p0, p1}, Lcom/google/common/reflect/ClassPath$ClassInfo;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    return-object v0

    .line 162
    :cond_0
    new-instance v0, Lcom/google/common/reflect/ClassPath$ResourceInfo;

    invoke-direct {v0, p0, p1}, Lcom/google/common/reflect/ClassPath$ResourceInfo;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 187
    instance-of v0, p1, Lcom/google/common/reflect/ClassPath$ResourceInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 188
    move-object v0, p1

    check-cast v0, Lcom/google/common/reflect/ClassPath$ResourceInfo;

    .line 189
    .local v0, "that":Lcom/google/common/reflect/ClassPath$ResourceInfo;
    iget-object v2, p0, Lcom/google/common/reflect/ClassPath$ResourceInfo;->resourceName:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/common/reflect/ClassPath$ResourceInfo;->resourceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/common/reflect/ClassPath$ResourceInfo;->loader:Ljava/lang/ClassLoader;

    iget-object v3, v0, Lcom/google/common/reflect/ClassPath$ResourceInfo;->loader:Ljava/lang/ClassLoader;

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 192
    .end local v0    # "that":Lcom/google/common/reflect/ClassPath$ResourceInfo;
    :cond_1
    return v1
.end method

.method public final getResourceName()Ljava/lang/String;
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/google/common/reflect/ClassPath$ResourceInfo;->resourceName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/google/common/reflect/ClassPath$ResourceInfo;->resourceName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/google/common/reflect/ClassPath$ResourceInfo;->resourceName:Ljava/lang/String;

    return-object v0
.end method

.method public final url()Ljava/net/URL;
    .locals 4

    .line 173
    iget-object v0, p0, Lcom/google/common/reflect/ClassPath$ResourceInfo;->loader:Ljava/lang/ClassLoader;

    iget-object v1, p0, Lcom/google/common/reflect/ClassPath$ResourceInfo;->resourceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/common/reflect/ClassPath$ResourceInfo;->resourceName:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "Failed to load resource: %s"

    invoke-static {v0, v2, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/URL;

    return-object v0
.end method
