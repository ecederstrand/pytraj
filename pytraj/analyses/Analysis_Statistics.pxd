# distutils: language = c++
from pytraj.analyses.Analysis cimport _Analysis, Analysis, RetType
from pytraj.core.DispatchObject cimport _DispatchObject, DispatchObject
from pytraj.core._FunctPtr cimport FunctPtr


cdef extern from "Analysis_Statistics.h": 
    cdef cppclass _Analysis_Statistics "Analysis_Statistics" (_Analysis):
        _Analysis_Statistics() 
        _DispatchObject * Alloc() 
        void Help()


cdef class Analysis_Statistics (Analysis):
    cdef _Analysis_Statistics* thisptr

