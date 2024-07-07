module fig_shapes
    use fig_types
    use fig_rgb_color_constants
    use fig_rgb

    type, abstract :: shape
        type(RGB) :: fill_color = FIG_COLOR_BLACK
        type(RGB) :: stroke_color = FIG_COLOR_BLANK
        real(kind=8) :: stroke_width  =1
    end type shape

    type, extends(shape) :: circle
        type(point) :: center
        real (kind=8):: r
    end type circle

    type, extends(shape) :: ellipse
        type(point) :: center
        real (kind=8):: rx, ry
    end type ellipse

    type, extends(shape) :: rectangle
        type(point) :: upper_left
        real (kind=8):: width, height
        real (kind=8):: rx=0, ry=0
    end type rectangle

    type, extends(shape) :: triangle
        type(point) :: p1, p2, p3
    end type triangle

    type, extends(shape) :: line
        type(point) :: p1,p2
    end type line

    type :: shapeWrapper
      class(shape), allocatable :: sh
    end type
end module fig_shapes
