!=======================================================================--------
!()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()
!=======================================================================--------
program krackentest2 

   use M_kracken
   implicit none
   character(len=255) :: filename 
   integer :: ival
   logical :: lval
   real    :: rval

   integer :: iflen
   integer :: ier

!  define the command options and default values and apply arguments from user command line
   call kracken("cmd", " -i 10 -r 10e3 -l ""#N#"" -f input") 

   call retrev("cmd_f",filename,iflen,ier)  ! get -f FILENAME
   lval = lget("cmd_l")                     ! get -l present?
   rval = rget("cmd_r")                     ! get -r RVAL
   ival = iget("cmd_i")                     ! get -i INTEGER

   print *, "filename=",filename(:iflen)
   print *, "i=",ival
   print *, "r=",rval
   print *, "l=",lval

   call retrev("cmd_oo",filename,iflen,ier) ! verb shows on ifort, does not on g95
   print *, "cmd_oo=",filename(:iflen)

   call get_command_argument(0,filename)
   print *, "arg(0)=",filename(:len_trim(filename))

!  ANOTHER STRING EXAMPLE
   filename=sget('cmd_f',len(filename))
   write(*,*)'filename=',filename(:len_trim(filename))

end program krackentest2                      
