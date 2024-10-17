program test_main
    use funit
    implicit none

    ! Define test suite and cases
    call test_suite('Main Program Test Suite')

    ! Example test case: Check if a function works correctly
    call test_case('Addition Test')
    call assert_equal(2 + 2, 4, 'Addition failed!')

    ! Finish the test run
    call end_tests
end program test_main
