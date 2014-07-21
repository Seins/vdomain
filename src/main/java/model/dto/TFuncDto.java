package model.dto;/**
 * Created by 邓风森 on 2014/7/21.
 */


import javax.persistence.*;

/**
 * @ClassName: TFuncDto
 * @Description: 功能模块简单实体类
 * @author:邓风森
 * @date: 2014/7/21 15:49
 */
@Entity
@Table(name = "t_func_introduction", schema = "", catalog = "vdomain")
public class TFuncDto {
    private int id;
    private String funcName;
    private String funcTitle;
    private String funcIconUrl;

    @Id
    @Column(name = "ID", nullable = false, insertable = true, updatable = true)
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Basic
    @Column(name = "FUNC_NAME", nullable = true, insertable = true, updatable = true, length = 70)
    public String getFuncName() {
        return funcName;
    }

    public void setFuncName(String funcName) {
        this.funcName = funcName;
    }

    @Basic
    @Column(name = "FUNC_TITLE", nullable = true, insertable = true, updatable = true, length = 70)
    public String getFuncTitle() {
        return funcTitle;
    }

    public void setFuncTitle(String funcTitle) {
        this.funcTitle = funcTitle;
    }


    @Basic
    @Column(name = "FUNC_ICON_URL", nullable = true, insertable = true, updatable = true, length = 500)
    public String getFuncIconUrl() {
        return funcIconUrl;
    }

    public void setFuncIconUrl(String funcIconUrl) {
        this.funcIconUrl = funcIconUrl;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        TFuncDto that = (TFuncDto) o;
        if (id != that.id) return false;
        if (funcIconUrl != null ? !funcIconUrl.equals(that.funcIconUrl) : that.funcIconUrl != null) return false;
        if (funcName != null ? !funcName.equals(that.funcName) : that.funcName != null) return false;
        if (funcTitle != null ? !funcTitle.equals(that.funcTitle) : that.funcTitle != null) return false;
        return true;
    }

    @Override
    public int hashCode() {
        int result = id;
        result = 31 * result + (funcName != null ? funcName.hashCode() : 0);
        result = 31 * result + (funcTitle != null ? funcTitle.hashCode() : 0);
        result = 31 * result + (funcIconUrl != null ? funcIconUrl.hashCode() : 0);
        return result;
    }


}
