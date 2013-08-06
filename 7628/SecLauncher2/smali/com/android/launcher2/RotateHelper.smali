.class public Lcom/android/launcher2/RotateHelper;
.super Ljava/lang/Object;
.source "RotateHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyStyle(ILandroid/view/View;)V
    .locals 3
    .parameter "resid"
    .parameter "v"

    .prologue
    .line 86
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/R$styleable;->View:[I

    invoke-virtual {v1, p0, v2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 87
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-static {v0, p1}, Lcom/android/launcher2/RotateHelper;->setViewAttributes(Landroid/content/res/TypedArray;Landroid/view/View;)V

    .line 88
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 89
    return-void
.end method

.method public static applyStyle(ILandroid/widget/LinearLayout;)V
    .locals 3
    .parameter "resid"
    .parameter "ll"

    .prologue
    .line 48
    invoke-static {p0, p1}, Lcom/android/launcher2/RotateHelper;->applyStyle(ILandroid/view/View;)V

    .line 50
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/R$styleable;->LinearLayout:[I

    invoke-virtual {v1, p0, v2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 51
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-static {v0, p1}, Lcom/android/launcher2/RotateHelper;->setLinearLayoutAttributes(Landroid/content/res/TypedArray;Landroid/widget/LinearLayout;)V

    .line 52
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 53
    return-void
.end method

.method public static applyStyle(ILandroid/widget/TextView;)V
    .locals 3
    .parameter "resid"
    .parameter "tv"

    .prologue
    .line 67
    invoke-static {p0, p1}, Lcom/android/launcher2/RotateHelper;->applyStyle(ILandroid/view/View;)V

    .line 69
    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/R$styleable;->TextView:[I

    invoke-virtual {v1, p0, v2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 70
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-static {v0, p1}, Lcom/android/launcher2/RotateHelper;->setTextViewAttributes(Landroid/content/res/TypedArray;Landroid/widget/TextView;)V

    .line 71
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 72
    return-void
.end method

.method public static applyStyleLayout(ILandroid/view/View;)V
    .locals 9
    .parameter "resid"
    .parameter "v"

    .prologue
    const/4 v8, 0x0

    .line 104
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 105
    .local v5, vlp:Landroid/view/ViewGroup$LayoutParams;
    instance-of v6, v5, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v6, :cond_1

    move-object v4, v5

    .line 107
    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 108
    .local v4, lp:Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    sget-object v7, Landroid/R$styleable;->FrameLayout_Layout:[I

    invoke-virtual {v6, p0, v7}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 109
    .local v0, a:Landroid/content/res/TypedArray;
    iget v6, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {v0, v8, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 110
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 121
    .end local v0           #a:Landroid/content/res/TypedArray;
    .end local v4           #lp:Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    :goto_0
    instance-of v6, v5, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v6, :cond_4

    move-object v4, v5

    .line 122
    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 123
    .local v4, lp:Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    sget-object v7, Landroid/R$styleable;->ViewGroup_MarginLayout:[I

    invoke-virtual {v6, p0, v7}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 124
    .restart local v0       #a:Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v2

    .line 125
    .local v2, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v2, :cond_2

    .line 126
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v1

    .line 127
    .local v1, attr:I
    packed-switch v1, :pswitch_data_0

    .line 125
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 111
    .end local v0           #a:Landroid/content/res/TypedArray;
    .end local v1           #attr:I
    .end local v2           #count:I
    .end local v3           #i:I
    .end local v4           #lp:Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_1
    instance-of v6, v5, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v6, :cond_0

    move-object v4, v5

    .line 113
    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 114
    .local v4, lp:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    sget-object v7, Landroid/R$styleable;->LinearLayout_Layout:[I

    invoke-virtual {v6, p0, v7}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 115
    .restart local v0       #a:Landroid/content/res/TypedArray;
    iget v6, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {v0, v8, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 116
    const/4 v6, 0x3

    iget v7, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    iput v6, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 117
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    .line 129
    .restart local v1       #attr:I
    .restart local v2       #count:I
    .restart local v3       #i:I
    .local v4, lp:Landroid/view/ViewGroup$MarginLayoutParams;
    :pswitch_0
    iget v6, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v6

    iput v6, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_2

    .line 132
    :pswitch_1
    iget v6, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v6

    iput v6, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_2

    .line 135
    :pswitch_2
    iget v6, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v6, v4, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v6, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v6, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_2

    .line 139
    :pswitch_3
    iget v6, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_2

    .line 142
    :pswitch_4
    iget v6, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_2

    .line 145
    :pswitch_5
    iget v6, v4, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, v4, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_2

    .line 148
    :pswitch_6
    iget v6, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_2

    .line 152
    .end local v1           #attr:I
    :cond_2
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 169
    .end local v0           #a:Landroid/content/res/TypedArray;
    .end local v2           #count:I
    .end local v3           #i:I
    .end local v4           #lp:Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_3
    :goto_3
    return-void

    .line 153
    :cond_4
    if-eqz v5, :cond_3

    .line 154
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    sget-object v7, Landroid/R$styleable;->ViewGroup_Layout:[I

    invoke-virtual {v6, p0, v7}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 155
    .restart local v0       #a:Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v2

    .line 156
    .restart local v2       #count:I
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_4
    if-ge v3, v2, :cond_5

    .line 157
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v1

    .line 158
    .restart local v1       #attr:I
    packed-switch v1, :pswitch_data_1

    .line 156
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 160
    :pswitch_7
    iget v6, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v6

    iput v6, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_5

    .line 163
    :pswitch_8
    iget v6, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v6

    iput v6, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_5

    .line 167
    .end local v1           #attr:I
    :cond_5
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_3

    .line 127
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 158
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public static setLinearLayoutAttributes(Landroid/content/res/TypedArray;Landroid/widget/LinearLayout;)V
    .locals 5
    .parameter "a"
    .parameter "ll"

    .prologue
    const/4 v4, 0x0

    .line 188
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v1

    .line 189
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 190
    invoke-virtual {p0, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v0

    .line 191
    .local v0, attr:I
    packed-switch v0, :pswitch_data_0

    .line 189
    :goto_1
    :pswitch_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 193
    :pswitch_1
    const/16 v3, 0x33

    invoke-virtual {p0, v0, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    goto :goto_1

    .line 196
    :pswitch_2
    invoke-virtual {p0, v0, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    goto :goto_1

    .line 199
    :pswitch_3
    const/4 v3, 0x1

    invoke-virtual {p0, v0, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setBaselineAligned(Z)V

    goto :goto_1

    .line 202
    :pswitch_4
    const/4 v3, -0x1

    invoke-virtual {p0, v0, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setBaselineAlignedChildIndex(I)V

    goto :goto_1

    .line 205
    :pswitch_5
    invoke-virtual {p0, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 208
    :pswitch_6
    invoke-virtual {p0, v0, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setMeasureWithLargestChildEnabled(Z)V

    goto :goto_1

    .line 211
    :pswitch_7
    invoke-virtual {p0, v0, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setShowDividers(I)V

    goto :goto_1

    .line 214
    :pswitch_8
    invoke-virtual {p0, v0, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setDividerPadding(I)V

    goto :goto_1

    .line 218
    .end local v0           #attr:I
    :cond_0
    return-void

    .line 191
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public static setTextViewAttributes(Landroid/content/res/TypedArray;Landroid/widget/TextView;)V
    .locals 13
    .parameter "a"
    .parameter "tv"

    .prologue
    const/high16 v12, -0x4080

    const/4 v11, 0x0

    const/4 v10, -0x1

    .line 237
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v1

    .line 238
    .local v1, count:I
    const/4 v3, -0x1

    .line 239
    .local v3, lines:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 240
    invoke-virtual {p0, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v0

    .line 241
    .local v0, attr:I
    sparse-switch v0, :sswitch_data_0

    .line 239
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 243
    :sswitch_0
    invoke-virtual {p0, v0, v12}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    .line 244
    .local v4, newSize:F
    invoke-virtual {p1}, Landroid/widget/TextView;->getTextSize()F

    move-result v5

    .line 245
    .local v5, oldSize:F
    cmpl-float v8, v4, v12

    if-eqz v8, :cond_0

    cmpl-float v8, v4, v5

    if-eqz v8, :cond_0

    .line 246
    invoke-virtual {p1, v11, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 251
    cmpg-float v8, v4, v5

    if-gez v8, :cond_0

    .line 252
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    sget-object v9, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {p1, v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    goto :goto_1

    .line 258
    .end local v4           #newSize:F
    .end local v5           #oldSize:F
    :sswitch_1
    const/4 v7, 0x0

    .line 259
    .local v7, truncate:Landroid/text/TextUtils$TruncateAt;
    invoke-virtual {p0, v0, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    packed-switch v8, :pswitch_data_0

    .line 273
    :goto_2
    invoke-virtual {p1, v7}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_1

    .line 261
    :pswitch_0
    sget-object v7, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    .line 262
    goto :goto_2

    .line 264
    :pswitch_1
    sget-object v7, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    .line 265
    goto :goto_2

    .line 267
    :pswitch_2
    sget-object v7, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 268
    goto :goto_2

    .line 270
    :pswitch_3
    sget-object v7, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    goto :goto_2

    .line 277
    .end local v7           #truncate:Landroid/text/TextUtils$TruncateAt;
    :sswitch_2
    invoke-virtual {p0, v0, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    invoke-virtual {p1, v8}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_1

    .line 280
    :sswitch_3
    invoke-virtual {p0, v0, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 281
    goto :goto_1

    .line 283
    :sswitch_4
    invoke-virtual {p0, v0, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    invoke-virtual {p1, v8}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    goto :goto_1

    .line 286
    :sswitch_5
    invoke-virtual {p0, v0, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    .line 287
    .local v6, singleLine:Z
    if-eqz v6, :cond_1

    .line 288
    const/4 v3, 0x1

    .line 289
    :cond_1
    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setSingleLine(Z)V

    goto :goto_1

    .line 292
    .end local v6           #singleLine:Z
    :sswitch_6
    invoke-virtual {p0, v0, v11}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    invoke-virtual {p1, v8}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    goto :goto_1

    .line 299
    .end local v0           #attr:I
    :cond_2
    if-eq v3, v10, :cond_3

    .line 300
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setLines(I)V

    .line 302
    :cond_3
    return-void

    .line 241
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x9 -> :sswitch_1
        0xa -> :sswitch_2
        0x17 -> :sswitch_3
        0x1e -> :sswitch_4
        0x20 -> :sswitch_5
        0x34 -> :sswitch_6
    .end sparse-switch

    .line 259
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static setViewAttributes(Landroid/content/res/TypedArray;Landroid/view/View;)V
    .locals 12
    .parameter "a"
    .parameter "v"

    .prologue
    const/high16 v11, 0x3f80

    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 322
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    .line 323
    .local v5, paddingLeft:I
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v7

    .line 324
    .local v7, paddingTop:I
    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v6

    .line 325
    .local v6, paddingRight:I
    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    .line 327
    .local v4, paddingBottom:I
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v1

    .line 328
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 329
    invoke-virtual {p0, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v0

    .line 330
    .local v0, attr:I
    packed-switch v0, :pswitch_data_0

    .line 328
    :cond_0
    :goto_1
    :pswitch_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 332
    :pswitch_1
    invoke-virtual {p0, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {p1, v8}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 335
    :pswitch_2
    const/4 v8, -0x1

    invoke-virtual {p0, v0, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    .line 336
    .local v3, padding:I
    if-ltz v3, :cond_0

    .line 337
    move v4, v3

    move v6, v3

    move v7, v3

    move v5, v3

    goto :goto_1

    .line 340
    .end local v3           #padding:I
    :pswitch_3
    invoke-virtual {p0, v0, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    .line 341
    goto :goto_1

    .line 343
    :pswitch_4
    invoke-virtual {p0, v0, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    .line 344
    goto :goto_1

    .line 346
    :pswitch_5
    invoke-virtual {p0, v0, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    .line 347
    goto :goto_1

    .line 349
    :pswitch_6
    invoke-virtual {p0, v0, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    .line 350
    goto :goto_1

    .line 352
    :pswitch_7
    invoke-virtual {p0, v0, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    invoke-virtual {p1, v8}, Landroid/view/View;->setClickable(Z)V

    goto :goto_1

    .line 355
    :pswitch_8
    invoke-virtual {p0, v0, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    invoke-virtual {p1, v8}, Landroid/view/View;->setLongClickable(Z)V

    goto :goto_1

    .line 358
    :pswitch_9
    invoke-virtual {p0, v0, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    invoke-virtual {p1, v8}, Landroid/view/View;->setMinimumWidth(I)V

    goto :goto_1

    .line 361
    :pswitch_a
    invoke-virtual {p0, v0, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    invoke-virtual {p1, v8}, Landroid/view/View;->setMinimumHeight(I)V

    goto :goto_1

    .line 364
    :pswitch_b
    invoke-virtual {p0, v0, v11}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v8

    invoke-virtual {p1, v8}, Landroid/view/View;->setAlpha(F)V

    goto :goto_1

    .line 367
    :pswitch_c
    invoke-virtual {p0, v0, v9}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {p1, v8}, Landroid/view/View;->setPivotX(F)V

    goto :goto_1

    .line 370
    :pswitch_d
    invoke-virtual {p0, v0, v9}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {p1, v8}, Landroid/view/View;->setPivotY(F)V

    goto :goto_1

    .line 373
    :pswitch_e
    invoke-virtual {p0, v0, v9}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {p1, v8}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_1

    .line 376
    :pswitch_f
    invoke-virtual {p0, v0, v9}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {p1, v8}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_1

    .line 379
    :pswitch_10
    invoke-virtual {p0, v0, v11}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v8

    invoke-virtual {p1, v8}, Landroid/view/View;->setScaleX(F)V

    goto :goto_1

    .line 382
    :pswitch_11
    invoke-virtual {p0, v0, v11}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v8

    invoke-virtual {p1, v8}, Landroid/view/View;->setScaleY(F)V

    goto/16 :goto_1

    .line 385
    :pswitch_12
    invoke-virtual {p0, v0, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v8

    invoke-virtual {p1, v8}, Landroid/view/View;->setRotation(F)V

    goto/16 :goto_1

    .line 388
    :pswitch_13
    invoke-virtual {p0, v0, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v8

    invoke-virtual {p1, v8}, Landroid/view/View;->setRotationX(F)V

    goto/16 :goto_1

    .line 391
    :pswitch_14
    invoke-virtual {p0, v0, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v8

    invoke-virtual {p1, v8}, Landroid/view/View;->setRotationY(F)V

    goto/16 :goto_1

    .line 395
    .end local v0           #attr:I
    :cond_1
    invoke-virtual {p1, v5, v7, v6, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 396
    return-void

    .line 330
    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
    .end packed-switch
.end method
