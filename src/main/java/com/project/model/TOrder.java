package com.project.model;

import java.util.Date;
import com.baomidou.mybatisplus.annotation.TableField;
import java.io.Serializable;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * <p>
 *
 * </p>
 *
 * @author 基因重组
 * @since 2021-08-04
 */
@Data
@EqualsAndHashCode(callSuper = false)
@ApiModel(value="TOrder对象", description="")
public class TOrder implements Serializable {

    private static final long serialVersionUID = 1L;

    private String no;

    @TableField("startTime")
    private Date starttime;

    @TableField("endTime")
    private Date endtime;

    @TableField("buyerId")
    private Integer buyerid;

    @TableField("sellerId")
    private Integer sellerid;

    @TableField("listId")
    private String listid;


}
