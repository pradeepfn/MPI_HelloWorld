
program micro
    include 'mpif.h'

    integer(4) :: ierr,mype,nproc
    integer(4) :: i
    logical file_exist

    
    call MPI_INIT(ierr)
    call MPI_COMM_SIZE(MPI_COMM_WORLD, nproc, ierr)
    call MPI_COMM_RANK(MPI_COMM_WORLD, mype, ierr)

    if(mype==0) print *, "Micro_C/R - Starting computation"
    !Do some heavy computations, checkpoint after each iter
    do i = 1, 10
        call compute()
        !coordinated checkpoint 
        if(mype == 0) write(0,*)'Computing : ', i
        call MPI_BARRIER(MPI_COMM_WORLD,ierr)
        call compute()
        call MPI_BARRIER(MPI_COMM_WORLD,ierr)
    end do
    call MPI_FINALIZE(ierr) 
    if(mype == 0) write(0,*)'End of benchmark. Bye!!'
end program micro

!Compute subroutine
subroutine compute()
    call sleep(1)
end subroutine compute


