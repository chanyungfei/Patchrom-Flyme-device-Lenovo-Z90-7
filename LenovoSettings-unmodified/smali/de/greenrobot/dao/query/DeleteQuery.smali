.class public Lde/greenrobot/dao/query/DeleteQuery;
.super Lde/greenrobot/dao/query/AbstractQuery;


# instance fields
.field private final queryData:Lde/greenrobot/dao/query/DeleteQuery$QueryData;


# direct methods
.method private constructor <init>(Lde/greenrobot/dao/query/DeleteQuery$QueryData;Lde/greenrobot/dao/AbstractDao;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .param p3, "sql"    # Ljava/lang/String;
    .param p4, "initialValues"    # [Ljava/lang/String;

    .prologue
    .local p0, "this":Lde/greenrobot/dao/query/DeleteQuery;, "Lde/greenrobot/dao/query/DeleteQuery<TT;>;"
    .local p1, "queryData":Lde/greenrobot/dao/query/DeleteQuery$QueryData;, "Lde/greenrobot/dao/query/DeleteQuery$QueryData<TT;>;"
    .local p2, "dao":Lde/greenrobot/dao/AbstractDao;, "Lde/greenrobot/dao/AbstractDao<TT;*>;"
    invoke-direct {p0, p2, p3, p4}, Lde/greenrobot/dao/query/AbstractQuery;-><init>(Lde/greenrobot/dao/AbstractDao;Ljava/lang/String;[Ljava/lang/String;)V

    iput-object p1, p0, Lde/greenrobot/dao/query/DeleteQuery;->queryData:Lde/greenrobot/dao/query/DeleteQuery$QueryData;

    return-void
.end method

.method synthetic constructor <init>(Lde/greenrobot/dao/query/DeleteQuery$QueryData;Lde/greenrobot/dao/AbstractDao;Ljava/lang/String;[Ljava/lang/String;Lde/greenrobot/dao/query/DeleteQuery;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lde/greenrobot/dao/query/DeleteQuery;-><init>(Lde/greenrobot/dao/query/DeleteQuery$QueryData;Lde/greenrobot/dao/AbstractDao;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method static create(Lde/greenrobot/dao/AbstractDao;Ljava/lang/String;[Ljava/lang/Object;)Lde/greenrobot/dao/query/DeleteQuery;
    .locals 3
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "initialValues"    # [Ljava/lang/Object;

    .prologue
    .local p0, "dao":Lde/greenrobot/dao/AbstractDao;, "Lde/greenrobot/dao/AbstractDao<TT2;*>;"
    new-instance v0, Lde/greenrobot/dao/query/DeleteQuery$QueryData;

    invoke-static {p2}, Lde/greenrobot/dao/query/DeleteQuery;->toStringArray([Ljava/lang/Object;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v1, v2}, Lde/greenrobot/dao/query/DeleteQuery$QueryData;-><init>(Lde/greenrobot/dao/AbstractDao;Ljava/lang/String;[Ljava/lang/String;Lde/greenrobot/dao/query/DeleteQuery$QueryData;)V

    invoke-virtual {v0}, Lde/greenrobot/dao/query/DeleteQuery$QueryData;->forCurrentThread()Lde/greenrobot/dao/query/AbstractQuery;

    move-result-object v0

    check-cast v0, Lde/greenrobot/dao/query/DeleteQuery;

    return-object v0
.end method


# virtual methods
.method public executeDeleteWithoutDetachingEntities()V
    .locals 4

    invoke-virtual {p0}, Lde/greenrobot/dao/query/DeleteQuery;->checkThread()V

    iget-object v0, p0, Lde/greenrobot/dao/query/DeleteQuery;->dao:Lde/greenrobot/dao/AbstractDao;

    invoke-virtual {v0}, Lde/greenrobot/dao/AbstractDao;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isDbLockedByCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lde/greenrobot/dao/query/DeleteQuery;->dao:Lde/greenrobot/dao/AbstractDao;

    invoke-virtual {v0}, Lde/greenrobot/dao/AbstractDao;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iget-object v1, p0, Lde/greenrobot/dao/query/DeleteQuery;->sql:Ljava/lang/String;

    iget-object v2, p0, Lde/greenrobot/dao/query/DeleteQuery;->parameters:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_0
    iget-object v0, p0, Lde/greenrobot/dao/query/DeleteQuery;->dao:Lde/greenrobot/dao/AbstractDao;

    invoke-virtual {v0}, Lde/greenrobot/dao/AbstractDao;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iget-object v2, p0, Lde/greenrobot/dao/query/DeleteQuery;->sql:Ljava/lang/String;

    iget-object v3, p0, Lde/greenrobot/dao/query/DeleteQuery;->parameters:[Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method public forCurrentThread()Lde/greenrobot/dao/query/DeleteQuery;
    .locals 1

    iget-object v0, p0, Lde/greenrobot/dao/query/DeleteQuery;->queryData:Lde/greenrobot/dao/query/DeleteQuery$QueryData;

    invoke-virtual {v0, p0}, Lde/greenrobot/dao/query/DeleteQuery$QueryData;->forCurrentThread(Lde/greenrobot/dao/query/AbstractQuery;)Lde/greenrobot/dao/query/AbstractQuery;

    move-result-object v0

    check-cast v0, Lde/greenrobot/dao/query/DeleteQuery;

    return-object v0
.end method

.method public bridge synthetic setParameter(ILjava/lang/Object;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lde/greenrobot/dao/query/AbstractQuery;->setParameter(ILjava/lang/Object;)V

    return-void
.end method
