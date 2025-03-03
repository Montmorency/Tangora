# tangora
A Haskell implementation of Tangora's program for computing the 
E^2 term of the Adams Spectral Sequence using the $\Lambda$ Algebra.

Structure of the \Lambda algebra
=================================

The algebra is generated by generators :math:`\lambda_n` with :math:`n\geq 0`. 
The generators obey the following relations:

.. math::
    \lambda_{i} \lambda_{2i+n+1} = \sum_{j \geq 0} A(n,j) \lambda_{i+n-j}\lambda_{2i=1+j}

There is an explicit expression for the differential:
.. math::
    d(\lambda_{n}) = \sum_{j \geq 1}A(n+1,j)\lambda_{n-j}\lambda_{j-1}

and:
.. math::
    A(k,j) = {{k-j-1}\choose{j}} mod 2

The binomial coefficient is chosen to be zero by convention
if :math:`k-j-1` or :math:`j` are less than zero.

A sequence :math:`\lambda_i\lambda_j\lambda_k` 
can be denoted :math:`(i,j,k,...)`, and, in \Lambda_{(2)}, 
is admissible if :math:`2i_{j}\geq i_{j+1}` throughout.


Each generator :math:`\lambda_n` has (co)homological degree $s=1$, total degree 
t=n+1, and  and topological degree r = (t-s) = n.

There is a leibniz rule:

.. math::
    d(xy) = d(x)y+ (-1)^{t-s}xd(y)


