module fig_bitmap_rect
    use fig_shapes
    use fig_canvas
    use fig_bitmap_utils

contains

    subroutine write_rectangle(canva, pixels, rect)
        class(base_canvas), intent(inout) :: canva
        integer(pixel), dimension(:,:), intent(inout):: pixels
        type(rectangle), intent(in) :: rect
        integer(pixel) :: color
        
        color = rgb_to_int(rect%fill_color)
        call fill_rect(canva, pixels, int(rect%x), int(rect%y), int(rect%width), int(rect%height), color)
    end subroutine write_rectangle
    

end module fig_bitmap_rect