.class Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;
.super Ljava/lang/Object;
.source "Workspace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/Workspace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WallpaperOffsetInterpolator"
.end annotation


# instance fields
.field mFinalHorizontalWallpaperOffset:F

.field mFinalVerticalWallpaperOffset:F

.field mHorizontalCatchupConstant:F

.field mHorizontalWallpaperOffset:F

.field mIsMovingFast:Z

.field mLastWallpaperOffsetUpdateTime:J

.field mOverrideHorizontalCatchupConstant:Z

.field mVerticalCatchupConstant:F

.field mVerticalWallpaperOffset:F

.field final synthetic this$0:Lcom/android/launcher2/Workspace;


# direct methods
.method public constructor <init>(Lcom/android/launcher2/Workspace;)V
    .locals 4
    .parameter

    .prologue
    const v3, 0x3eb33333

    const/high16 v1, 0x3f00

    const/4 v2, 0x0

    .line 940
    iput-object p1, p0, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->this$0:Lcom/android/launcher2/Workspace;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 930
    iput v2, p0, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->mFinalHorizontalWallpaperOffset:F

    .line 931
    iput v1, p0, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->mFinalVerticalWallpaperOffset:F

    .line 932
    iput v2, p0, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->mHorizontalWallpaperOffset:F

    .line 933
    iput v1, p0, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->mVerticalWallpaperOffset:F

    .line 936
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->mOverrideHorizontalCatchupConstant:Z

    .line 937
    iput v3, p0, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->mHorizontalCatchupConstant:F

    .line 938
    iput v3, p0, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->mVerticalCatchupConstant:F

    .line 941
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput v0, p0, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->mVerticalWallpaperOffset:F

    .line 942
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    iput v1, p0, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->mFinalVerticalWallpaperOffset:F

    .line 943
    return-void

    :cond_0
    move v0, v2

    .line 941
    goto :goto_0

    :cond_1
    move v1, v2

    .line 942
    goto :goto_1
.end method


# virtual methods
.method public computeScrollOffset()Z
    .locals 21

    .prologue
    .line 958
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->mHorizontalWallpaperOffset:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->mFinalHorizontalWallpaperOffset:F

    move/from16 v18, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Float;->compare(FF)I

    move-result v17

    if-nez v17, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->mVerticalWallpaperOffset:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->mFinalVerticalWallpaperOffset:F

    move/from16 v18, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Float;->compare(FF)I

    move-result v17

    if-nez v17, :cond_0

    .line 960
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->mIsMovingFast:Z

    .line 961
    const/16 v17, 0x0

    .line 1016
    :goto_0
    return v17

    .line 963
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->this$0:Lcom/android/launcher2/Workspace;

    move-object/from16 v17, v0

    #getter for: Lcom/android/launcher2/Workspace;->mDisplayWidth:I
    invoke-static/range {v17 .. v17}, Lcom/android/launcher2/Workspace;->access$1000(Lcom/android/launcher2/Workspace;)I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->this$0:Lcom/android/launcher2/Workspace;

    move-object/from16 v18, v0

    #getter for: Lcom/android/launcher2/Workspace;->mDisplayHeight:I
    invoke-static/range {v18 .. v18}, Lcom/android/launcher2/Workspace;->access$1100(Lcom/android/launcher2/Workspace;)I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_2

    const/4 v9, 0x1

    .line 965
    .local v9, isLandscape:Z
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 966
    .local v4, currentTime:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->mLastWallpaperOffsetUpdateTime:J

    move-wide/from16 v17, v0

    sub-long v13, v4, v17

    .line 967
    .local v13, timeSinceLastUpdate:J
    const-wide/16 v17, 0x21

    move-wide/from16 v0, v17

    invoke-static {v0, v1, v13, v14}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v13

    .line 968
    const-wide/16 v17, 0x1

    move-wide/from16 v0, v17

    invoke-static {v0, v1, v13, v14}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v13

    .line 970
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->mFinalHorizontalWallpaperOffset:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->mHorizontalWallpaperOffset:F

    move/from16 v18, v0

    sub-float v17, v17, v18

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(F)F

    move-result v16

    .line 971
    .local v16, xdiff:F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->mIsMovingFast:Z

    move/from16 v17, v0

    if-nez v17, :cond_1

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v17, v0

    const-wide v19, 0x3fb1eb851eb851ecL

    cmpl-double v17, v17, v19

    if-lez v17, :cond_1

    .line 972
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->mIsMovingFast:Z

    .line 976
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->mOverrideHorizontalCatchupConstant:Z

    move/from16 v17, v0

    if-eqz v17, :cond_3

    .line 977
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->mHorizontalCatchupConstant:F

    .line 986
    .local v6, fractionToCatchUpIn1MsHorizontal:F
    :goto_2
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->mVerticalCatchupConstant:F

    .line 988
    .local v7, fractionToCatchUpIn1MsVertical:F
    const/high16 v17, 0x4204

    div-float v6, v6, v17

    .line 989
    const/high16 v17, 0x4204

    div-float v7, v7, v17

    .line 991
    const v3, 0x3727c5ac

    .line 992
    .local v3, UPDATE_THRESHOLD:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->mFinalHorizontalWallpaperOffset:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->mHorizontalWallpaperOffset:F

    move/from16 v18, v0

    sub-float v8, v17, v18

    .line 993
    .local v8, hOffsetDelta:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->mFinalVerticalWallpaperOffset:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->mVerticalWallpaperOffset:F

    move/from16 v18, v0

    sub-float v15, v17, v18

    .line 994
    .local v15, vOffsetDelta:F
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v17

    const v18, 0x3727c5ac

    cmpg-float v17, v17, v18

    if-gez v17, :cond_8

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v17

    const v18, 0x3727c5ac

    cmpg-float v17, v17, v18

    if-gez v17, :cond_8

    const/4 v10, 0x1

    .line 997
    .local v10, jumpToFinalValue:Z
    :goto_3
    if-eqz v10, :cond_9

    .line 998
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->mFinalHorizontalWallpaperOffset:F

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->mHorizontalWallpaperOffset:F

    .line 999
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->mFinalVerticalWallpaperOffset:F

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->mVerticalWallpaperOffset:F

    .line 1015
    :goto_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    move-wide/from16 v0, v17

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->mLastWallpaperOffsetUpdateTime:J

    .line 1016
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 963
    .end local v3           #UPDATE_THRESHOLD:F
    .end local v4           #currentTime:J
    .end local v6           #fractionToCatchUpIn1MsHorizontal:F
    .end local v7           #fractionToCatchUpIn1MsVertical:F
    .end local v8           #hOffsetDelta:F
    .end local v9           #isLandscape:Z
    .end local v10           #jumpToFinalValue:Z
    .end local v13           #timeSinceLastUpdate:J
    .end local v15           #vOffsetDelta:F
    .end local v16           #xdiff:F
    :cond_2
    const/4 v9, 0x0

    goto/16 :goto_1

    .line 978
    .restart local v4       #currentTime:J
    .restart local v9       #isLandscape:Z
    .restart local v13       #timeSinceLastUpdate:J
    .restart local v16       #xdiff:F
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->this$0:Lcom/android/launcher2/Workspace;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/launcher2/PagedView;->mSnapState:I

    move/from16 v17, v0

    if-eqz v17, :cond_4

    .line 979
    const v6, 0x3e99999a

    .restart local v6       #fractionToCatchUpIn1MsHorizontal:F
    goto :goto_2

    .line 980
    .end local v6           #fractionToCatchUpIn1MsHorizontal:F
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->mIsMovingFast:Z

    move/from16 v17, v0

    if-eqz v17, :cond_6

    .line 981
    if-eqz v9, :cond_5

    const/high16 v6, 0x3f00

    .restart local v6       #fractionToCatchUpIn1MsHorizontal:F
    :goto_5
    goto/16 :goto_2

    .end local v6           #fractionToCatchUpIn1MsHorizontal:F
    :cond_5
    const/high16 v6, 0x3f40

    goto :goto_5

    .line 984
    :cond_6
    if-eqz v9, :cond_7

    const v6, 0x3e8a3d71

    .restart local v6       #fractionToCatchUpIn1MsHorizontal:F
    :goto_6
    goto/16 :goto_2

    .end local v6           #fractionToCatchUpIn1MsHorizontal:F
    :cond_7
    const/high16 v6, 0x3f00

    goto :goto_6

    .line 994
    .restart local v3       #UPDATE_THRESHOLD:F
    .restart local v6       #fractionToCatchUpIn1MsHorizontal:F
    .restart local v7       #fractionToCatchUpIn1MsVertical:F
    .restart local v8       #hOffsetDelta:F
    .restart local v15       #vOffsetDelta:F
    :cond_8
    const/4 v10, 0x0

    goto :goto_3

    .line 1001
    .restart local v10       #jumpToFinalValue:Z
    :cond_9
    const/high16 v17, 0x3f80

    long-to-float v0, v13

    move/from16 v18, v0

    mul-float v18, v18, v7

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->min(FF)F

    move-result v12

    .line 1003
    .local v12, percentToCatchUpVertical:F
    const/high16 v17, 0x3f80

    long-to-float v0, v13

    move/from16 v18, v0

    mul-float v18, v18, v6

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->min(FF)F

    move-result v11

    .line 1005
    .local v11, percentToCatchUpHorizontal:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->mHorizontalWallpaperOffset:F

    move/from16 v17, v0

    mul-float v18, v11, v8

    add-float v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->mHorizontalWallpaperOffset:F

    .line 1006
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->mVerticalWallpaperOffset:F

    move/from16 v17, v0

    mul-float v18, v12, v15

    add-float v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->mVerticalWallpaperOffset:F

    goto :goto_4
.end method

.method public getCurrX()F
    .locals 1

    .prologue
    .line 1020
    iget v0, p0, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->mHorizontalWallpaperOffset:F

    return v0
.end method

.method public getCurrY()F
    .locals 1

    .prologue
    .line 1028
    iget v0, p0, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->mVerticalWallpaperOffset:F

    return v0
.end method

.method public getFinalX()F
    .locals 1

    .prologue
    .line 1024
    iget v0, p0, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->mFinalHorizontalWallpaperOffset:F

    return v0
.end method

.method public getFinalY()F
    .locals 1

    .prologue
    .line 1032
    iget v0, p0, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->mFinalVerticalWallpaperOffset:F

    return v0
.end method

.method public jumpToFinal()V
    .locals 1

    .prologue
    .line 1047
    iget v0, p0, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->mFinalHorizontalWallpaperOffset:F

    iput v0, p0, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->mHorizontalWallpaperOffset:F

    .line 1048
    iget v0, p0, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->mFinalVerticalWallpaperOffset:F

    iput v0, p0, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->mVerticalWallpaperOffset:F

    .line 1049
    return-void
.end method

.method public setFinalX(FLjava/lang/String;)V
    .locals 2
    .parameter "x"
    .parameter "who"

    .prologue
    .line 1036
    const/4 v0, 0x0

    const/high16 v1, 0x3f80

    invoke-static {p1, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->mFinalHorizontalWallpaperOffset:F

    .line 1040
    return-void
.end method

.method public setFinalY(F)V
    .locals 2
    .parameter "y"

    .prologue
    .line 1043
    const/4 v0, 0x0

    const/high16 v1, 0x3f80

    invoke-static {p1, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->mFinalVerticalWallpaperOffset:F

    .line 1044
    return-void
.end method

.method public setHorizontalCatchupConstant(F)V
    .locals 0
    .parameter "f"

    .prologue
    .line 950
    iput p1, p0, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->mHorizontalCatchupConstant:F

    .line 951
    return-void
.end method

.method public setOverrideHorizontalCatchupConstant(Z)V
    .locals 0
    .parameter "override"

    .prologue
    .line 946
    iput-boolean p1, p0, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->mOverrideHorizontalCatchupConstant:Z

    .line 947
    return-void
.end method

.method public setVerticalCatchupConstant(F)V
    .locals 0
    .parameter "f"

    .prologue
    .line 954
    iput p1, p0, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->mVerticalCatchupConstant:F

    .line 955
    return-void
.end method
