module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1 , 1] , \22name\22 : \22v1_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1 , 1] , \22name\22 : \22v4_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1 , 1] , \22name\22 : \22v3_0\22 }\0A ,    { \22type\22 : \22i64\22 , \22dims\22 : [1 , 1] , \22name\22 : \22v5_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.func @omTensorListGetSize(!llvm.ptr<i8>) -> i64
  llvm.func @omTensorPrint(!llvm.ptr<i8>, !llvm.ptr<i8>)
  llvm.func @omTensorListGetOmtArray(!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
  llvm.func @omTensorSetDataType(!llvm.ptr<i8>, i64)
  llvm.func @omTensorGetDataType(!llvm.ptr<i8>) -> i64
  llvm.func @omTensorGetStrides(!llvm.ptr<i8>) -> !llvm.ptr<i64>
  llvm.func @omTensorGetShape(!llvm.ptr<i8>) -> !llvm.ptr<i64>
  llvm.func @omTensorGetRank(!llvm.ptr<i8>) -> i64
  llvm.func @omTensorSetDataPtr(!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>)
  llvm.func @omTensorGetDataPtr(!llvm.ptr<i8>) -> !llvm.ptr<i8>
  llvm.func @omTensorCreateUntyped(i64) -> !llvm.ptr<i8>
  llvm.func @omTensorListCreate(!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
  llvm.func @malloc(i64) -> !llvm.ptr<i8>
  llvm.mlir.global internal constant @constant_4(dense<1> : tensor<5xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<5 x i64>
  llvm.mlir.global internal constant @constant_3(dense<-1> : tensor<i64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i64>
  llvm.mlir.global internal constant @constant_2(dense<1> : tensor<5xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<5 x i64>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64, %arg11: i64, %arg12: i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>)> attributes {input_names = ["v1_0"], llvm.emit_c_interface, output_names = ["v4_0", "v3_0", "v5_0"]} {
    %0 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>
    %1 = llvm.insertvalue %arg0, %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %2 = llvm.insertvalue %arg1, %1[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %3 = llvm.insertvalue %arg2, %2[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %4 = llvm.insertvalue %arg3, %3[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %5 = llvm.insertvalue %arg8, %4[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %6 = llvm.insertvalue %arg4, %5[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %7 = llvm.insertvalue %arg9, %6[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %8 = llvm.insertvalue %arg5, %7[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %9 = llvm.insertvalue %arg10, %8[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %10 = llvm.insertvalue %arg6, %9[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %11 = llvm.insertvalue %arg11, %10[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %12 = llvm.insertvalue %arg7, %11[3, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %13 = llvm.insertvalue %arg12, %12[4, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %14 = llvm.mlir.constant(0 : i64) : i64
    %15 = llvm.mlir.constant(-1 : i64) : i64
    %16 = llvm.mlir.constant(2147483647 : i32) : i32
    %17 = llvm.mlir.constant(0 : i32) : i32
    %18 = llvm.mlir.constant(0 : index) : i64
    %19 = llvm.mlir.constant(1 : i64) : i64
    %20 = llvm.mlir.addressof @constant_2 : !llvm.ptr<array<5 x i64>>
    %21 = llvm.bitcast %20 : !llvm.ptr<array<5 x i64>> to !llvm.ptr<i64>
    %22 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %23 = llvm.insertvalue %21, %22[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %24 = llvm.insertvalue %21, %23[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %25 = llvm.mlir.constant(0 : index) : i64
    %26 = llvm.insertvalue %25, %24[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %27 = llvm.mlir.constant(5 : index) : i64
    %28 = llvm.insertvalue %27, %26[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %29 = llvm.mlir.constant(1 : index) : i64
    %30 = llvm.insertvalue %29, %28[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %31 = llvm.mlir.addressof @constant_3 : !llvm.ptr<array<1 x i64>>
    %32 = llvm.bitcast %31 : !llvm.ptr<array<1 x i64>> to !llvm.ptr<i64>
    %33 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64)>
    %34 = llvm.insertvalue %32, %33[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %35 = llvm.insertvalue %32, %34[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %36 = llvm.mlir.constant(0 : index) : i64
    %37 = llvm.insertvalue %36, %35[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %38 = llvm.mlir.addressof @constant_4 : !llvm.ptr<array<5 x i64>>
    %39 = llvm.bitcast %38 : !llvm.ptr<array<5 x i64>> to !llvm.ptr<i64>
    %40 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %41 = llvm.insertvalue %39, %40[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %42 = llvm.insertvalue %39, %41[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %43 = llvm.mlir.constant(0 : index) : i64
    %44 = llvm.insertvalue %43, %42[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %45 = llvm.mlir.constant(5 : index) : i64
    %46 = llvm.insertvalue %45, %44[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %47 = llvm.mlir.constant(1 : index) : i64
    %48 = llvm.insertvalue %47, %46[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %49 = llvm.mlir.constant(5 : index) : i64
    %50 = llvm.mlir.constant(1 : index) : i64
    %51 = llvm.mlir.null : !llvm.ptr<i64>
    %52 = llvm.getelementptr %51[%49] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %53 = llvm.ptrtoint %52 : !llvm.ptr<i64> to i64
    %54 = llvm.mlir.constant(16 : index) : i64
    %55 = llvm.add %53, %54  : i64
    %56 = llvm.call @malloc(%55) : (i64) -> !llvm.ptr<i8>
    %57 = llvm.bitcast %56 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %58 = llvm.ptrtoint %57 : !llvm.ptr<i64> to i64
    %59 = llvm.mlir.constant(1 : index) : i64
    %60 = llvm.sub %54, %59  : i64
    %61 = llvm.add %58, %60  : i64
    %62 = llvm.urem %61, %54  : i64
    %63 = llvm.sub %61, %62  : i64
    %64 = llvm.inttoptr %63 : i64 to !llvm.ptr<i64>
    %65 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %66 = llvm.insertvalue %57, %65[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %67 = llvm.insertvalue %64, %66[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %68 = llvm.mlir.constant(0 : index) : i64
    %69 = llvm.insertvalue %68, %67[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %70 = llvm.insertvalue %49, %69[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %71 = llvm.insertvalue %50, %70[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %72 = llvm.mlir.constant(0 : index) : i64
    %73 = llvm.mlir.constant(5 : index) : i64
    %74 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%72 : i64)
  ^bb1(%75: i64):  // 2 preds: ^bb0, ^bb2
    %76 = llvm.icmp "slt" %75, %73 : i64
    llvm.cond_br %76, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    %77 = llvm.extractvalue %71[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %78 = llvm.getelementptr %77[%75] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %19, %78 : !llvm.ptr<i64>
    %79 = llvm.add %75, %74  : i64
    llvm.br ^bb1(%79 : i64)
  ^bb3:  // pred: ^bb1
    %80 = llvm.mlir.constant(5 : index) : i64
    %81 = llvm.mlir.constant(1 : index) : i64
    %82 = llvm.mlir.null : !llvm.ptr<i64>
    %83 = llvm.getelementptr %82[%80] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %84 = llvm.ptrtoint %83 : !llvm.ptr<i64> to i64
    %85 = llvm.mlir.constant(16 : index) : i64
    %86 = llvm.add %84, %85  : i64
    %87 = llvm.call @malloc(%86) : (i64) -> !llvm.ptr<i8>
    %88 = llvm.bitcast %87 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %89 = llvm.ptrtoint %88 : !llvm.ptr<i64> to i64
    %90 = llvm.mlir.constant(1 : index) : i64
    %91 = llvm.sub %85, %90  : i64
    %92 = llvm.add %89, %91  : i64
    %93 = llvm.urem %92, %85  : i64
    %94 = llvm.sub %92, %93  : i64
    %95 = llvm.inttoptr %94 : i64 to !llvm.ptr<i64>
    %96 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %97 = llvm.insertvalue %88, %96[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %98 = llvm.insertvalue %95, %97[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %99 = llvm.mlir.constant(0 : index) : i64
    %100 = llvm.insertvalue %99, %98[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %101 = llvm.insertvalue %80, %100[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %102 = llvm.insertvalue %81, %101[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %103 = llvm.mlir.constant(0 : index) : i64
    %104 = llvm.mlir.constant(5 : index) : i64
    %105 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb4(%103 : i64)
  ^bb4(%106: i64):  // 2 preds: ^bb3, ^bb5
    %107 = llvm.icmp "slt" %106, %104 : i64
    llvm.cond_br %107, ^bb5, ^bb6
  ^bb5:  // pred: ^bb4
    %108 = llvm.extractvalue %71[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %109 = llvm.getelementptr %108[%106] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %110 = llvm.load %109 : !llvm.ptr<i64>
    %111 = llvm.extractvalue %37[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %112 = llvm.load %111 : !llvm.ptr<i64>
    %113 = llvm.mul %110, %112  : i64
    %114 = llvm.extractvalue %102[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %115 = llvm.getelementptr %114[%106] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %113, %115 : !llvm.ptr<i64>
    %116 = llvm.add %106, %105  : i64
    llvm.br ^bb4(%116 : i64)
  ^bb6:  // pred: ^bb4
    %117 = llvm.mlir.constant(5 : index) : i64
    %118 = llvm.mlir.constant(1 : index) : i64
    %119 = llvm.mlir.null : !llvm.ptr<i1>
    %120 = llvm.getelementptr %119[%117] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %121 = llvm.ptrtoint %120 : !llvm.ptr<i1> to i64
    %122 = llvm.mlir.constant(16 : index) : i64
    %123 = llvm.add %121, %122  : i64
    %124 = llvm.call @malloc(%123) : (i64) -> !llvm.ptr<i8>
    %125 = llvm.bitcast %124 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %126 = llvm.ptrtoint %125 : !llvm.ptr<i1> to i64
    %127 = llvm.mlir.constant(1 : index) : i64
    %128 = llvm.sub %122, %127  : i64
    %129 = llvm.add %126, %128  : i64
    %130 = llvm.urem %129, %122  : i64
    %131 = llvm.sub %129, %130  : i64
    %132 = llvm.inttoptr %131 : i64 to !llvm.ptr<i1>
    %133 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %134 = llvm.insertvalue %125, %133[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %135 = llvm.insertvalue %132, %134[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %136 = llvm.mlir.constant(0 : index) : i64
    %137 = llvm.insertvalue %136, %135[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %138 = llvm.insertvalue %117, %137[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %139 = llvm.insertvalue %118, %138[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %140 = llvm.mlir.constant(0 : index) : i64
    %141 = llvm.mlir.constant(5 : index) : i64
    %142 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%140 : i64)
  ^bb7(%143: i64):  // 2 preds: ^bb6, ^bb8
    %144 = llvm.icmp "slt" %143, %141 : i64
    llvm.cond_br %144, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %145 = llvm.extractvalue %30[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %146 = llvm.getelementptr %145[%143] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %147 = llvm.load %146 : !llvm.ptr<i64>
    %148 = llvm.extractvalue %102[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %149 = llvm.getelementptr %148[%143] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %150 = llvm.load %149 : !llvm.ptr<i64>
    %151 = llvm.icmp "eq" %147, %150 : i64
    %152 = llvm.extractvalue %139[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %153 = llvm.getelementptr %152[%143] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %151, %153 : !llvm.ptr<i1>
    %154 = llvm.add %143, %142  : i64
    llvm.br ^bb7(%154 : i64)
  ^bb9:  // pred: ^bb7
    %155 = llvm.mlir.constant(5 : index) : i64
    %156 = llvm.mlir.constant(1 : index) : i64
    %157 = llvm.mlir.null : !llvm.ptr<i64>
    %158 = llvm.getelementptr %157[%155] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %159 = llvm.ptrtoint %158 : !llvm.ptr<i64> to i64
    %160 = llvm.mlir.constant(16 : index) : i64
    %161 = llvm.add %159, %160  : i64
    %162 = llvm.call @malloc(%161) : (i64) -> !llvm.ptr<i8>
    %163 = llvm.bitcast %162 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %164 = llvm.ptrtoint %163 : !llvm.ptr<i64> to i64
    %165 = llvm.mlir.constant(1 : index) : i64
    %166 = llvm.sub %160, %165  : i64
    %167 = llvm.add %164, %166  : i64
    %168 = llvm.urem %167, %160  : i64
    %169 = llvm.sub %167, %168  : i64
    %170 = llvm.inttoptr %169 : i64 to !llvm.ptr<i64>
    %171 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %172 = llvm.insertvalue %163, %171[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %173 = llvm.insertvalue %170, %172[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %174 = llvm.mlir.constant(0 : index) : i64
    %175 = llvm.insertvalue %174, %173[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %176 = llvm.insertvalue %155, %175[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %177 = llvm.insertvalue %156, %176[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %178 = llvm.mlir.constant(0 : index) : i64
    %179 = llvm.mlir.constant(5 : index) : i64
    %180 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb10(%178 : i64)
  ^bb10(%181: i64):  // 2 preds: ^bb9, ^bb11
    %182 = llvm.icmp "slt" %181, %179 : i64
    llvm.cond_br %182, ^bb11, ^bb12
  ^bb11:  // pred: ^bb10
    %183 = llvm.extractvalue %139[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %184 = llvm.getelementptr %183[%181] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %185 = llvm.load %184 : !llvm.ptr<i1>
    %186 = llvm.extractvalue %71[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %187 = llvm.getelementptr %186[%181] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %188 = llvm.load %187 : !llvm.ptr<i64>
    %189 = llvm.extractvalue %48[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %190 = llvm.getelementptr %189[%181] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %191 = llvm.load %190 : !llvm.ptr<i64>
    %192 = llvm.select %185, %188, %191 : i1, i64
    %193 = llvm.extractvalue %177[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %194 = llvm.getelementptr %193[%181] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %192, %194 : !llvm.ptr<i64>
    %195 = llvm.add %181, %180  : i64
    llvm.br ^bb10(%195 : i64)
  ^bb12:  // pred: ^bb10
    %196 = llvm.mlir.constant(1 : index) : i64
    %197 = llvm.mlir.constant(1 : index) : i64
    %198 = llvm.mlir.constant(1 : index) : i64
    %199 = llvm.mlir.constant(1 : index) : i64
    %200 = llvm.mlir.constant(1 : index) : i64
    %201 = llvm.mlir.constant(1 : index) : i64
    %202 = llvm.mlir.null : !llvm.ptr<i32>
    %203 = llvm.getelementptr %202[%196] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %204 = llvm.ptrtoint %203 : !llvm.ptr<i32> to i64
    %205 = llvm.mlir.constant(16 : index) : i64
    %206 = llvm.add %204, %205  : i64
    %207 = llvm.call @malloc(%206) : (i64) -> !llvm.ptr<i8>
    %208 = llvm.bitcast %207 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %209 = llvm.ptrtoint %208 : !llvm.ptr<i32> to i64
    %210 = llvm.mlir.constant(1 : index) : i64
    %211 = llvm.sub %205, %210  : i64
    %212 = llvm.add %209, %211  : i64
    %213 = llvm.urem %212, %205  : i64
    %214 = llvm.sub %212, %213  : i64
    %215 = llvm.inttoptr %214 : i64 to !llvm.ptr<i32>
    %216 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>
    %217 = llvm.insertvalue %208, %216[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %218 = llvm.insertvalue %215, %217[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %219 = llvm.mlir.constant(0 : index) : i64
    %220 = llvm.insertvalue %219, %218[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %221 = llvm.insertvalue %196, %220[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %222 = llvm.insertvalue %197, %221[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %223 = llvm.insertvalue %198, %222[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %224 = llvm.insertvalue %199, %223[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %225 = llvm.insertvalue %200, %224[3, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %226 = llvm.insertvalue %197, %225[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %227 = llvm.insertvalue %198, %226[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %228 = llvm.insertvalue %199, %227[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %229 = llvm.insertvalue %200, %228[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %230 = llvm.insertvalue %201, %229[4, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %231 = llvm.mlir.constant(0 : index) : i64
    %232 = llvm.mlir.constant(1 : index) : i64
    %233 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%231 : i64)
  ^bb13(%234: i64):  // 2 preds: ^bb12, ^bb26
    %235 = llvm.icmp "slt" %234, %232 : i64
    llvm.cond_br %235, ^bb14, ^bb27
  ^bb14:  // pred: ^bb13
    %236 = llvm.mlir.constant(0 : index) : i64
    %237 = llvm.mlir.constant(1 : index) : i64
    %238 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb15(%236 : i64)
  ^bb15(%239: i64):  // 2 preds: ^bb14, ^bb25
    %240 = llvm.icmp "slt" %239, %237 : i64
    llvm.cond_br %240, ^bb16, ^bb26
  ^bb16:  // pred: ^bb15
    %241 = llvm.mlir.constant(0 : index) : i64
    %242 = llvm.mlir.constant(1 : index) : i64
    %243 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb17(%241 : i64)
  ^bb17(%244: i64):  // 2 preds: ^bb16, ^bb24
    %245 = llvm.icmp "slt" %244, %242 : i64
    llvm.cond_br %245, ^bb18, ^bb25
  ^bb18:  // pred: ^bb17
    %246 = llvm.mlir.constant(0 : index) : i64
    %247 = llvm.mlir.constant(1 : index) : i64
    %248 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%246 : i64)
  ^bb19(%249: i64):  // 2 preds: ^bb18, ^bb23
    %250 = llvm.icmp "slt" %249, %247 : i64
    llvm.cond_br %250, ^bb20, ^bb24
  ^bb20:  // pred: ^bb19
    %251 = llvm.mlir.constant(0 : index) : i64
    %252 = llvm.mlir.constant(1 : index) : i64
    %253 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb21(%251 : i64)
  ^bb21(%254: i64):  // 2 preds: ^bb20, ^bb22
    %255 = llvm.icmp "slt" %254, %252 : i64
    llvm.cond_br %255, ^bb22, ^bb23
  ^bb22:  // pred: ^bb21
    %256 = llvm.extractvalue %13[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %257 = llvm.add %18, %18  : i64
    %258 = llvm.add %257, %18  : i64
    %259 = llvm.add %258, %18  : i64
    %260 = llvm.add %259, %18  : i64
    %261 = llvm.getelementptr %256[%260] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %262 = llvm.load %261 : !llvm.ptr<i32>
    %263 = llvm.extractvalue %230[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %264 = llvm.add %234, %239  : i64
    %265 = llvm.add %264, %244  : i64
    %266 = llvm.add %265, %249  : i64
    %267 = llvm.add %266, %254  : i64
    %268 = llvm.getelementptr %263[%267] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %262, %268 : !llvm.ptr<i32>
    %269 = llvm.add %254, %253  : i64
    llvm.br ^bb21(%269 : i64)
  ^bb23:  // pred: ^bb21
    %270 = llvm.add %249, %248  : i64
    llvm.br ^bb19(%270 : i64)
  ^bb24:  // pred: ^bb19
    %271 = llvm.add %244, %243  : i64
    llvm.br ^bb17(%271 : i64)
  ^bb25:  // pred: ^bb17
    %272 = llvm.add %239, %238  : i64
    llvm.br ^bb15(%272 : i64)
  ^bb26:  // pred: ^bb15
    %273 = llvm.add %234, %233  : i64
    llvm.br ^bb13(%273 : i64)
  ^bb27:  // pred: ^bb13
    %274 = llvm.mlir.constant(1 : index) : i64
    %275 = llvm.mlir.constant(1 : index) : i64
    %276 = llvm.mlir.constant(1 : index) : i64
    %277 = llvm.mlir.constant(1 : index) : i64
    %278 = llvm.mlir.constant(1 : index) : i64
    %279 = llvm.mlir.constant(1 : index) : i64
    %280 = llvm.mlir.null : !llvm.ptr<i32>
    %281 = llvm.getelementptr %280[%274] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %282 = llvm.ptrtoint %281 : !llvm.ptr<i32> to i64
    %283 = llvm.mlir.constant(16 : index) : i64
    %284 = llvm.add %282, %283  : i64
    %285 = llvm.call @malloc(%284) : (i64) -> !llvm.ptr<i8>
    %286 = llvm.bitcast %285 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %287 = llvm.ptrtoint %286 : !llvm.ptr<i32> to i64
    %288 = llvm.mlir.constant(1 : index) : i64
    %289 = llvm.sub %283, %288  : i64
    %290 = llvm.add %287, %289  : i64
    %291 = llvm.urem %290, %283  : i64
    %292 = llvm.sub %290, %291  : i64
    %293 = llvm.inttoptr %292 : i64 to !llvm.ptr<i32>
    %294 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>
    %295 = llvm.insertvalue %286, %294[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %296 = llvm.insertvalue %293, %295[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %297 = llvm.mlir.constant(0 : index) : i64
    %298 = llvm.insertvalue %297, %296[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %299 = llvm.insertvalue %274, %298[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %300 = llvm.insertvalue %275, %299[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %301 = llvm.insertvalue %276, %300[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %302 = llvm.insertvalue %277, %301[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %303 = llvm.insertvalue %278, %302[3, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %304 = llvm.insertvalue %275, %303[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %305 = llvm.insertvalue %276, %304[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %306 = llvm.insertvalue %277, %305[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %307 = llvm.insertvalue %278, %306[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %308 = llvm.insertvalue %279, %307[4, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %309 = llvm.mlir.constant(0 : index) : i64
    %310 = llvm.mlir.constant(1 : index) : i64
    %311 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb28(%309 : i64)
  ^bb28(%312: i64):  // 2 preds: ^bb27, ^bb41
    %313 = llvm.icmp "slt" %312, %310 : i64
    llvm.cond_br %313, ^bb29, ^bb42
  ^bb29:  // pred: ^bb28
    %314 = llvm.mlir.constant(0 : index) : i64
    %315 = llvm.mlir.constant(1 : index) : i64
    %316 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb30(%314 : i64)
  ^bb30(%317: i64):  // 2 preds: ^bb29, ^bb40
    %318 = llvm.icmp "slt" %317, %315 : i64
    llvm.cond_br %318, ^bb31, ^bb41
  ^bb31:  // pred: ^bb30
    %319 = llvm.mlir.constant(0 : index) : i64
    %320 = llvm.mlir.constant(1 : index) : i64
    %321 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb32(%319 : i64)
  ^bb32(%322: i64):  // 2 preds: ^bb31, ^bb39
    %323 = llvm.icmp "slt" %322, %320 : i64
    llvm.cond_br %323, ^bb33, ^bb40
  ^bb33:  // pred: ^bb32
    %324 = llvm.mlir.constant(0 : index) : i64
    %325 = llvm.mlir.constant(1 : index) : i64
    %326 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb34(%324 : i64)
  ^bb34(%327: i64):  // 2 preds: ^bb33, ^bb38
    %328 = llvm.icmp "slt" %327, %325 : i64
    llvm.cond_br %328, ^bb35, ^bb39
  ^bb35:  // pred: ^bb34
    %329 = llvm.mlir.constant(0 : index) : i64
    %330 = llvm.mlir.constant(1 : index) : i64
    %331 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb36(%329 : i64)
  ^bb36(%332: i64):  // 2 preds: ^bb35, ^bb37
    %333 = llvm.icmp "slt" %332, %330 : i64
    llvm.cond_br %333, ^bb37, ^bb38
  ^bb37:  // pred: ^bb36
    %334 = llvm.extractvalue %13[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %335 = llvm.add %312, %317  : i64
    %336 = llvm.add %335, %322  : i64
    %337 = llvm.add %336, %327  : i64
    %338 = llvm.add %337, %332  : i64
    %339 = llvm.getelementptr %334[%338] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %340 = llvm.load %339 : !llvm.ptr<i32>
    %341 = llvm.sub %17, %340  : i32
    %342 = llvm.extractvalue %308[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %343 = llvm.add %312, %317  : i64
    %344 = llvm.add %343, %322  : i64
    %345 = llvm.add %344, %327  : i64
    %346 = llvm.add %345, %332  : i64
    %347 = llvm.getelementptr %342[%346] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %341, %347 : !llvm.ptr<i32>
    %348 = llvm.add %332, %331  : i64
    llvm.br ^bb36(%348 : i64)
  ^bb38:  // pred: ^bb36
    %349 = llvm.add %327, %326  : i64
    llvm.br ^bb34(%349 : i64)
  ^bb39:  // pred: ^bb34
    %350 = llvm.add %322, %321  : i64
    llvm.br ^bb32(%350 : i64)
  ^bb40:  // pred: ^bb32
    %351 = llvm.add %317, %316  : i64
    llvm.br ^bb30(%351 : i64)
  ^bb41:  // pred: ^bb30
    %352 = llvm.add %312, %311  : i64
    llvm.br ^bb28(%352 : i64)
  ^bb42:  // pred: ^bb28
    %353 = llvm.mlir.constant(1 : index) : i64
    %354 = llvm.mlir.constant(1 : index) : i64
    %355 = llvm.mlir.constant(1 : index) : i64
    %356 = llvm.mlir.constant(1 : index) : i64
    %357 = llvm.mlir.constant(1 : index) : i64
    %358 = llvm.mlir.null : !llvm.ptr<i32>
    %359 = llvm.getelementptr %358[%353] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %360 = llvm.ptrtoint %359 : !llvm.ptr<i32> to i64
    %361 = llvm.mlir.constant(16 : index) : i64
    %362 = llvm.add %360, %361  : i64
    %363 = llvm.call @malloc(%362) : (i64) -> !llvm.ptr<i8>
    %364 = llvm.bitcast %363 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %365 = llvm.ptrtoint %364 : !llvm.ptr<i32> to i64
    %366 = llvm.mlir.constant(1 : index) : i64
    %367 = llvm.sub %361, %366  : i64
    %368 = llvm.add %365, %367  : i64
    %369 = llvm.urem %368, %361  : i64
    %370 = llvm.sub %368, %369  : i64
    %371 = llvm.inttoptr %370 : i64 to !llvm.ptr<i32>
    %372 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %373 = llvm.insertvalue %364, %372[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %374 = llvm.insertvalue %371, %373[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %375 = llvm.mlir.constant(0 : index) : i64
    %376 = llvm.insertvalue %375, %374[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %377 = llvm.insertvalue %353, %376[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %378 = llvm.insertvalue %354, %377[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %379 = llvm.insertvalue %355, %378[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %380 = llvm.insertvalue %356, %379[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %381 = llvm.insertvalue %354, %380[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %382 = llvm.insertvalue %355, %381[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %383 = llvm.insertvalue %356, %382[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %384 = llvm.insertvalue %357, %383[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %385 = llvm.mlir.constant(0 : index) : i64
    %386 = llvm.mlir.constant(1 : index) : i64
    %387 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb43(%385 : i64)
  ^bb43(%388: i64):  // 2 preds: ^bb42, ^bb53
    %389 = llvm.icmp "slt" %388, %386 : i64
    llvm.cond_br %389, ^bb44, ^bb54
  ^bb44:  // pred: ^bb43
    %390 = llvm.mlir.constant(0 : index) : i64
    %391 = llvm.mlir.constant(1 : index) : i64
    %392 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb45(%390 : i64)
  ^bb45(%393: i64):  // 2 preds: ^bb44, ^bb52
    %394 = llvm.icmp "slt" %393, %391 : i64
    llvm.cond_br %394, ^bb46, ^bb53
  ^bb46:  // pred: ^bb45
    %395 = llvm.mlir.constant(0 : index) : i64
    %396 = llvm.mlir.constant(1 : index) : i64
    %397 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb47(%395 : i64)
  ^bb47(%398: i64):  // 2 preds: ^bb46, ^bb51
    %399 = llvm.icmp "slt" %398, %396 : i64
    llvm.cond_br %399, ^bb48, ^bb52
  ^bb48:  // pred: ^bb47
    %400 = llvm.mlir.constant(0 : index) : i64
    %401 = llvm.mlir.constant(1 : index) : i64
    %402 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb49(%400 : i64)
  ^bb49(%403: i64):  // 2 preds: ^bb48, ^bb50
    %404 = llvm.icmp "slt" %403, %401 : i64
    llvm.cond_br %404, ^bb50, ^bb51
  ^bb50:  // pred: ^bb49
    %405 = llvm.extractvalue %384[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %406 = llvm.add %388, %393  : i64
    %407 = llvm.add %406, %398  : i64
    %408 = llvm.add %407, %403  : i64
    %409 = llvm.getelementptr %405[%408] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %16, %409 : !llvm.ptr<i32>
    %410 = llvm.add %403, %402  : i64
    llvm.br ^bb49(%410 : i64)
  ^bb51:  // pred: ^bb49
    %411 = llvm.add %398, %397  : i64
    llvm.br ^bb47(%411 : i64)
  ^bb52:  // pred: ^bb47
    %412 = llvm.add %393, %392  : i64
    llvm.br ^bb45(%412 : i64)
  ^bb53:  // pred: ^bb45
    %413 = llvm.add %388, %387  : i64
    llvm.br ^bb43(%413 : i64)
  ^bb54:  // pred: ^bb43
    %414 = llvm.mlir.constant(0 : index) : i64
    %415 = llvm.mlir.constant(1 : index) : i64
    %416 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb55(%414 : i64)
  ^bb55(%417: i64):  // 2 preds: ^bb54, ^bb68
    %418 = llvm.icmp "slt" %417, %415 : i64
    llvm.cond_br %418, ^bb56, ^bb69
  ^bb56:  // pred: ^bb55
    %419 = llvm.mlir.constant(0 : index) : i64
    %420 = llvm.mlir.constant(1 : index) : i64
    %421 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb57(%419 : i64)
  ^bb57(%422: i64):  // 2 preds: ^bb56, ^bb67
    %423 = llvm.icmp "slt" %422, %420 : i64
    llvm.cond_br %423, ^bb58, ^bb68
  ^bb58:  // pred: ^bb57
    %424 = llvm.mlir.constant(0 : index) : i64
    %425 = llvm.mlir.constant(1 : index) : i64
    %426 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb59(%424 : i64)
  ^bb59(%427: i64):  // 2 preds: ^bb58, ^bb66
    %428 = llvm.icmp "slt" %427, %425 : i64
    llvm.cond_br %428, ^bb60, ^bb67
  ^bb60:  // pred: ^bb59
    %429 = llvm.mlir.constant(0 : index) : i64
    %430 = llvm.mlir.constant(1 : index) : i64
    %431 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb61(%429 : i64)
  ^bb61(%432: i64):  // 2 preds: ^bb60, ^bb65
    %433 = llvm.icmp "slt" %432, %430 : i64
    llvm.cond_br %433, ^bb62, ^bb66
  ^bb62:  // pred: ^bb61
    %434 = llvm.mlir.constant(0 : index) : i64
    %435 = llvm.mlir.constant(1 : index) : i64
    %436 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb63(%434 : i64)
  ^bb63(%437: i64):  // 2 preds: ^bb62, ^bb64
    %438 = llvm.icmp "slt" %437, %435 : i64
    llvm.cond_br %438, ^bb64, ^bb65
  ^bb64:  // pred: ^bb63
    %439 = llvm.extractvalue %13[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %440 = llvm.add %417, %422  : i64
    %441 = llvm.add %440, %427  : i64
    %442 = llvm.add %441, %432  : i64
    %443 = llvm.add %442, %437  : i64
    %444 = llvm.getelementptr %439[%443] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %445 = llvm.load %444 : !llvm.ptr<i32>
    %446 = llvm.extractvalue %384[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %447 = llvm.add %422, %427  : i64
    %448 = llvm.add %447, %432  : i64
    %449 = llvm.add %448, %437  : i64
    %450 = llvm.getelementptr %446[%449] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %451 = llvm.load %450 : !llvm.ptr<i32>
    %452 = llvm.icmp "slt" %451, %445 : i32
    %453 = llvm.select %452, %451, %445 : i1, i32
    %454 = llvm.extractvalue %384[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %455 = llvm.add %422, %427  : i64
    %456 = llvm.add %455, %432  : i64
    %457 = llvm.add %456, %437  : i64
    %458 = llvm.getelementptr %454[%457] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %453, %458 : !llvm.ptr<i32>
    %459 = llvm.add %437, %436  : i64
    llvm.br ^bb63(%459 : i64)
  ^bb65:  // pred: ^bb63
    %460 = llvm.add %432, %431  : i64
    llvm.br ^bb61(%460 : i64)
  ^bb66:  // pred: ^bb61
    %461 = llvm.add %427, %426  : i64
    llvm.br ^bb59(%461 : i64)
  ^bb67:  // pred: ^bb59
    %462 = llvm.add %422, %421  : i64
    llvm.br ^bb57(%462 : i64)
  ^bb68:  // pred: ^bb57
    %463 = llvm.add %417, %416  : i64
    llvm.br ^bb55(%463 : i64)
  ^bb69:  // pred: ^bb55
    %464 = llvm.mlir.constant(1 : index) : i64
    %465 = llvm.mlir.constant(1 : index) : i64
    %466 = llvm.mlir.constant(1 : index) : i64
    %467 = llvm.mlir.constant(1 : index) : i64
    %468 = llvm.mlir.null : !llvm.ptr<i64>
    %469 = llvm.getelementptr %468[%464] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %470 = llvm.ptrtoint %469 : !llvm.ptr<i64> to i64
    %471 = llvm.mlir.constant(16 : index) : i64
    %472 = llvm.add %470, %471  : i64
    %473 = llvm.call @malloc(%472) : (i64) -> !llvm.ptr<i8>
    %474 = llvm.bitcast %473 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %475 = llvm.ptrtoint %474 : !llvm.ptr<i64> to i64
    %476 = llvm.mlir.constant(1 : index) : i64
    %477 = llvm.sub %471, %476  : i64
    %478 = llvm.add %475, %477  : i64
    %479 = llvm.urem %478, %471  : i64
    %480 = llvm.sub %478, %479  : i64
    %481 = llvm.inttoptr %480 : i64 to !llvm.ptr<i64>
    %482 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>
    %483 = llvm.insertvalue %474, %482[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %484 = llvm.insertvalue %481, %483[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %485 = llvm.mlir.constant(0 : index) : i64
    %486 = llvm.insertvalue %485, %484[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %487 = llvm.insertvalue %464, %486[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %488 = llvm.insertvalue %465, %487[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %489 = llvm.insertvalue %466, %488[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %490 = llvm.insertvalue %465, %489[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %491 = llvm.insertvalue %466, %490[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %492 = llvm.insertvalue %467, %491[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %493 = llvm.mlir.constant(0 : index) : i64
    %494 = llvm.mlir.constant(1 : index) : i64
    %495 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb70(%493 : i64)
  ^bb70(%496: i64):  // 2 preds: ^bb69, ^bb77
    %497 = llvm.icmp "slt" %496, %494 : i64
    llvm.cond_br %497, ^bb71, ^bb78
  ^bb71:  // pred: ^bb70
    %498 = llvm.mlir.constant(0 : index) : i64
    %499 = llvm.mlir.constant(1 : index) : i64
    %500 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb72(%498 : i64)
  ^bb72(%501: i64):  // 2 preds: ^bb71, ^bb76
    %502 = llvm.icmp "slt" %501, %499 : i64
    llvm.cond_br %502, ^bb73, ^bb77
  ^bb73:  // pred: ^bb72
    %503 = llvm.mlir.constant(0 : index) : i64
    %504 = llvm.mlir.constant(1 : index) : i64
    %505 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb74(%503 : i64)
  ^bb74(%506: i64):  // 2 preds: ^bb73, ^bb75
    %507 = llvm.icmp "slt" %506, %504 : i64
    llvm.cond_br %507, ^bb75, ^bb76
  ^bb75:  // pred: ^bb74
    %508 = llvm.extractvalue %492[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %509 = llvm.add %496, %501  : i64
    %510 = llvm.add %509, %506  : i64
    %511 = llvm.getelementptr %508[%510] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %15, %511 : !llvm.ptr<i64>
    %512 = llvm.add %506, %505  : i64
    llvm.br ^bb74(%512 : i64)
  ^bb76:  // pred: ^bb74
    %513 = llvm.add %501, %500  : i64
    llvm.br ^bb72(%513 : i64)
  ^bb77:  // pred: ^bb72
    %514 = llvm.add %496, %495  : i64
    llvm.br ^bb70(%514 : i64)
  ^bb78:  // pred: ^bb70
    %515 = llvm.mlir.constant(0 : index) : i64
    %516 = llvm.mlir.constant(1 : index) : i64
    %517 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb79(%515 : i64)
  ^bb79(%518: i64):  // 2 preds: ^bb78, ^bb89
    %519 = llvm.icmp "slt" %518, %516 : i64
    llvm.cond_br %519, ^bb80, ^bb90
  ^bb80:  // pred: ^bb79
    %520 = llvm.mlir.constant(0 : index) : i64
    %521 = llvm.mlir.constant(1 : index) : i64
    %522 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb81(%520 : i64)
  ^bb81(%523: i64):  // 2 preds: ^bb80, ^bb88
    %524 = llvm.icmp "slt" %523, %521 : i64
    llvm.cond_br %524, ^bb82, ^bb89
  ^bb82:  // pred: ^bb81
    %525 = llvm.mlir.constant(0 : index) : i64
    %526 = llvm.mlir.constant(1 : index) : i64
    %527 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb83(%525 : i64)
  ^bb83(%528: i64):  // 2 preds: ^bb82, ^bb87
    %529 = llvm.icmp "slt" %528, %526 : i64
    llvm.cond_br %529, ^bb84, ^bb88
  ^bb84:  // pred: ^bb83
    %530 = llvm.mlir.constant(0 : index) : i64
    %531 = llvm.mlir.constant(1 : index) : i64
    %532 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb85(%530 : i64)
  ^bb85(%533: i64):  // 2 preds: ^bb84, ^bb86
    %534 = llvm.icmp "slt" %533, %531 : i64
    llvm.cond_br %534, ^bb86, ^bb87
  ^bb86:  // pred: ^bb85
    %535 = llvm.extractvalue %384[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %536 = llvm.add %518, %523  : i64
    %537 = llvm.add %536, %528  : i64
    %538 = llvm.add %537, %533  : i64
    %539 = llvm.getelementptr %535[%538] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %540 = llvm.load %539 : !llvm.ptr<i32>
    %541 = llvm.extractvalue %492[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %542 = llvm.add %518, %528  : i64
    %543 = llvm.add %542, %533  : i64
    %544 = llvm.getelementptr %541[%543] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %545 = llvm.load %544 : !llvm.ptr<i64>
    %546 = llvm.icmp "slt" %545, %14 : i64
    %547 = llvm.select %546, %14, %545 : i1, i64
    %548 = llvm.extractvalue %384[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %549 = llvm.add %518, %547  : i64
    %550 = llvm.add %549, %528  : i64
    %551 = llvm.add %550, %533  : i64
    %552 = llvm.getelementptr %548[%551] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %553 = llvm.load %552 : !llvm.ptr<i32>
    %554 = llvm.icmp "sgt" %540, %553 : i32
    %555 = llvm.select %554, %523, %547 : i1, i64
    %556 = llvm.extractvalue %492[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %557 = llvm.add %518, %528  : i64
    %558 = llvm.add %557, %533  : i64
    %559 = llvm.getelementptr %556[%558] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %555, %559 : !llvm.ptr<i64>
    %560 = llvm.add %533, %532  : i64
    llvm.br ^bb85(%560 : i64)
  ^bb87:  // pred: ^bb85
    %561 = llvm.add %528, %527  : i64
    llvm.br ^bb83(%561 : i64)
  ^bb88:  // pred: ^bb83
    %562 = llvm.add %523, %522  : i64
    llvm.br ^bb81(%562 : i64)
  ^bb89:  // pred: ^bb81
    %563 = llvm.add %518, %517  : i64
    llvm.br ^bb79(%563 : i64)
  ^bb90:  // pred: ^bb79
    %564 = llvm.mlir.constant(1 : index) : i64
    %565 = llvm.mlir.constant(1 : index) : i64
    %566 = llvm.mlir.constant(1 : index) : i64
    %567 = llvm.mlir.null : !llvm.ptr<i64>
    %568 = llvm.getelementptr %567[%564] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %569 = llvm.ptrtoint %568 : !llvm.ptr<i64> to i64
    %570 = llvm.mlir.constant(16 : index) : i64
    %571 = llvm.add %569, %570  : i64
    %572 = llvm.call @malloc(%571) : (i64) -> !llvm.ptr<i8>
    %573 = llvm.bitcast %572 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %574 = llvm.ptrtoint %573 : !llvm.ptr<i64> to i64
    %575 = llvm.mlir.constant(1 : index) : i64
    %576 = llvm.sub %570, %575  : i64
    %577 = llvm.add %574, %576  : i64
    %578 = llvm.urem %577, %570  : i64
    %579 = llvm.sub %577, %578  : i64
    %580 = llvm.inttoptr %579 : i64 to !llvm.ptr<i64>
    %581 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>
    %582 = llvm.insertvalue %573, %581[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %583 = llvm.insertvalue %580, %582[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %584 = llvm.mlir.constant(0 : index) : i64
    %585 = llvm.insertvalue %584, %583[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %586 = llvm.insertvalue %564, %585[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %587 = llvm.insertvalue %565, %586[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %588 = llvm.insertvalue %565, %587[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %589 = llvm.insertvalue %566, %588[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %590 = llvm.mlir.constant(0 : index) : i64
    %591 = llvm.mlir.constant(1 : index) : i64
    %592 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb91(%590 : i64)
  ^bb91(%593: i64):  // 2 preds: ^bb90, ^bb95
    %594 = llvm.icmp "slt" %593, %591 : i64
    llvm.cond_br %594, ^bb92, ^bb96
  ^bb92:  // pred: ^bb91
    %595 = llvm.mlir.constant(0 : index) : i64
    %596 = llvm.mlir.constant(1 : index) : i64
    %597 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb93(%595 : i64)
  ^bb93(%598: i64):  // 2 preds: ^bb92, ^bb94
    %599 = llvm.icmp "slt" %598, %596 : i64
    llvm.cond_br %599, ^bb94, ^bb95
  ^bb94:  // pred: ^bb93
    %600 = llvm.extractvalue %589[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %601 = llvm.add %593, %598  : i64
    %602 = llvm.getelementptr %600[%601] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %14, %602 : !llvm.ptr<i64>
    %603 = llvm.add %598, %597  : i64
    llvm.br ^bb93(%603 : i64)
  ^bb95:  // pred: ^bb93
    %604 = llvm.add %593, %592  : i64
    llvm.br ^bb91(%604 : i64)
  ^bb96:  // pred: ^bb91
    %605 = llvm.mlir.constant(0 : index) : i64
    %606 = llvm.mlir.constant(1 : index) : i64
    %607 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb97(%605 : i64)
  ^bb97(%608: i64):  // 2 preds: ^bb96, ^bb104
    %609 = llvm.icmp "slt" %608, %606 : i64
    llvm.cond_br %609, ^bb98, ^bb105
  ^bb98:  // pred: ^bb97
    %610 = llvm.mlir.constant(0 : index) : i64
    %611 = llvm.mlir.constant(1 : index) : i64
    %612 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb99(%610 : i64)
  ^bb99(%613: i64):  // 2 preds: ^bb98, ^bb103
    %614 = llvm.icmp "slt" %613, %611 : i64
    llvm.cond_br %614, ^bb100, ^bb104
  ^bb100:  // pred: ^bb99
    %615 = llvm.mlir.constant(0 : index) : i64
    %616 = llvm.mlir.constant(1 : index) : i64
    %617 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb101(%615 : i64)
  ^bb101(%618: i64):  // 2 preds: ^bb100, ^bb102
    %619 = llvm.icmp "slt" %618, %616 : i64
    llvm.cond_br %619, ^bb102, ^bb103
  ^bb102:  // pred: ^bb101
    %620 = llvm.extractvalue %492[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %621 = llvm.add %608, %613  : i64
    %622 = llvm.add %621, %618  : i64
    %623 = llvm.getelementptr %620[%622] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %624 = llvm.load %623 : !llvm.ptr<i64>
    %625 = llvm.extractvalue %589[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %626 = llvm.add %613, %618  : i64
    %627 = llvm.getelementptr %625[%626] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %628 = llvm.load %627 : !llvm.ptr<i64>
    %629 = llvm.add %628, %624  : i64
    %630 = llvm.extractvalue %589[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %631 = llvm.add %613, %618  : i64
    %632 = llvm.getelementptr %630[%631] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %629, %632 : !llvm.ptr<i64>
    %633 = llvm.add %618, %617  : i64
    llvm.br ^bb101(%633 : i64)
  ^bb103:  // pred: ^bb101
    %634 = llvm.add %613, %612  : i64
    llvm.br ^bb99(%634 : i64)
  ^bb104:  // pred: ^bb99
    %635 = llvm.add %608, %607  : i64
    llvm.br ^bb97(%635 : i64)
  ^bb105:  // pred: ^bb97
    %636 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>)>
    %637 = llvm.insertvalue %230, %636[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>)> 
    %638 = llvm.insertvalue %308, %637[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>)> 
    %639 = llvm.insertvalue %589, %638[2] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>)> 
    llvm.return %639 : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>>) attributes {input_names = ["v1_0"], llvm.emit_c_interface, output_names = ["v4_0", "v3_0", "v5_0"]} {
    %0 = llvm.load %arg1 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>>
    %1 = llvm.extractvalue %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %2 = llvm.extractvalue %0[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %3 = llvm.extractvalue %0[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %4 = llvm.extractvalue %0[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %5 = llvm.extractvalue %0[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %6 = llvm.extractvalue %0[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %7 = llvm.extractvalue %0[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %8 = llvm.extractvalue %0[3, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %9 = llvm.extractvalue %0[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %10 = llvm.extractvalue %0[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %11 = llvm.extractvalue %0[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %12 = llvm.extractvalue %0[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %13 = llvm.extractvalue %0[4, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %14 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11, %12, %13) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>)>
    llvm.store %14, %arg0 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>)>>
    %3 = llvm.mlir.constant(0 : i64) : i64
    %4 = llvm.getelementptr %0[%3] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %5 = llvm.load %4 : !llvm.ptr<ptr<i8>>
    %6 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>>
    %7 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>
    %8 = llvm.call @omTensorGetDataPtr(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %9 = llvm.bitcast %8 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %10 = llvm.insertvalue %9, %7[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %11 = llvm.insertvalue %9, %10[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %12 = llvm.mlir.constant(0 : i64) : i64
    %13 = llvm.insertvalue %12, %11[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %14 = llvm.call @omTensorGetShape(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %15 = llvm.call @omTensorGetStrides(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %16 = llvm.mlir.constant(0 : i64) : i64
    %17 = llvm.getelementptr %14[%16] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %18 = llvm.load %17 : !llvm.ptr<i64>
    %19 = llvm.insertvalue %18, %13[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %20 = llvm.getelementptr %15[%16] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %21 = llvm.load %20 : !llvm.ptr<i64>
    %22 = llvm.insertvalue %21, %19[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %23 = llvm.mlir.constant(1 : i64) : i64
    %24 = llvm.getelementptr %14[%23] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %25 = llvm.load %24 : !llvm.ptr<i64>
    %26 = llvm.insertvalue %25, %22[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %27 = llvm.getelementptr %15[%23] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %28 = llvm.load %27 : !llvm.ptr<i64>
    %29 = llvm.insertvalue %28, %26[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %30 = llvm.mlir.constant(2 : i64) : i64
    %31 = llvm.getelementptr %14[%30] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %32 = llvm.load %31 : !llvm.ptr<i64>
    %33 = llvm.insertvalue %32, %29[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %34 = llvm.getelementptr %15[%30] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %35 = llvm.load %34 : !llvm.ptr<i64>
    %36 = llvm.insertvalue %35, %33[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %37 = llvm.mlir.constant(3 : i64) : i64
    %38 = llvm.getelementptr %14[%37] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %39 = llvm.load %38 : !llvm.ptr<i64>
    %40 = llvm.insertvalue %39, %36[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %41 = llvm.getelementptr %15[%37] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %42 = llvm.load %41 : !llvm.ptr<i64>
    %43 = llvm.insertvalue %42, %40[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %44 = llvm.mlir.constant(4 : i64) : i64
    %45 = llvm.getelementptr %14[%44] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %46 = llvm.load %45 : !llvm.ptr<i64>
    %47 = llvm.insertvalue %46, %43[3, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %48 = llvm.getelementptr %15[%44] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %49 = llvm.load %48 : !llvm.ptr<i64>
    %50 = llvm.insertvalue %49, %47[4, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    llvm.store %50, %6 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>>
    llvm.call @_mlir_ciface_main_graph(%2, %6) : (!llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>>) -> ()
    %51 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>)>>
    %52 = llvm.extractvalue %51[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>)> 
    %53 = llvm.extractvalue %51[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>)> 
    %54 = llvm.extractvalue %51[2] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>)> 
    %55 = llvm.mlir.constant(3 : i64) : i64
    %56 = llvm.mlir.constant(24 : i64) : i64
    %57 = llvm.call @malloc(%56) : (i64) -> !llvm.ptr<i8>
    %58 = llvm.bitcast %57 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %59 = llvm.mlir.constant(5 : i64) : i64
    %60 = llvm.call @omTensorCreateUntyped(%59) : (i64) -> !llvm.ptr<i8>
    %61 = llvm.mlir.constant(1 : i64) : i64
    %62 = llvm.extractvalue %52[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %63 = llvm.bitcast %62 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %64 = llvm.extractvalue %52[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %65 = llvm.bitcast %64 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%60, %61, %63, %65) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %66 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%60, %66) : (!llvm.ptr<i8>, i64) -> ()
    %67 = llvm.call @omTensorGetShape(%60) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %68 = llvm.call @omTensorGetStrides(%60) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %69 = llvm.mlir.constant(0 : i64) : i64
    %70 = llvm.extractvalue %52[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %71 = llvm.getelementptr %67[%69] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %70, %71 : !llvm.ptr<i64>
    %72 = llvm.extractvalue %52[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %73 = llvm.getelementptr %68[%69] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %72, %73 : !llvm.ptr<i64>
    %74 = llvm.mlir.constant(1 : i64) : i64
    %75 = llvm.extractvalue %52[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %76 = llvm.getelementptr %67[%74] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %75, %76 : !llvm.ptr<i64>
    %77 = llvm.extractvalue %52[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %78 = llvm.getelementptr %68[%74] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %77, %78 : !llvm.ptr<i64>
    %79 = llvm.mlir.constant(2 : i64) : i64
    %80 = llvm.extractvalue %52[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %81 = llvm.getelementptr %67[%79] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %80, %81 : !llvm.ptr<i64>
    %82 = llvm.extractvalue %52[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %83 = llvm.getelementptr %68[%79] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %82, %83 : !llvm.ptr<i64>
    %84 = llvm.mlir.constant(3 : i64) : i64
    %85 = llvm.extractvalue %52[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %86 = llvm.getelementptr %67[%84] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %85, %86 : !llvm.ptr<i64>
    %87 = llvm.extractvalue %52[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %88 = llvm.getelementptr %68[%84] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %87, %88 : !llvm.ptr<i64>
    %89 = llvm.mlir.constant(4 : i64) : i64
    %90 = llvm.extractvalue %52[3, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %91 = llvm.getelementptr %67[%89] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %90, %91 : !llvm.ptr<i64>
    %92 = llvm.extractvalue %52[4, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %93 = llvm.getelementptr %68[%89] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %92, %93 : !llvm.ptr<i64>
    %94 = llvm.mlir.constant(0 : i64) : i64
    %95 = llvm.getelementptr %58[%94] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %60, %95 : !llvm.ptr<ptr<i8>>
    %96 = llvm.mlir.constant(5 : i64) : i64
    %97 = llvm.call @omTensorCreateUntyped(%96) : (i64) -> !llvm.ptr<i8>
    %98 = llvm.mlir.constant(1 : i64) : i64
    %99 = llvm.extractvalue %53[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %100 = llvm.bitcast %99 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %101 = llvm.extractvalue %53[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %102 = llvm.bitcast %101 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%97, %98, %100, %102) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %103 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%97, %103) : (!llvm.ptr<i8>, i64) -> ()
    %104 = llvm.call @omTensorGetShape(%97) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %105 = llvm.call @omTensorGetStrides(%97) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %106 = llvm.mlir.constant(0 : i64) : i64
    %107 = llvm.extractvalue %53[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %108 = llvm.getelementptr %104[%106] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %107, %108 : !llvm.ptr<i64>
    %109 = llvm.extractvalue %53[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %110 = llvm.getelementptr %105[%106] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %109, %110 : !llvm.ptr<i64>
    %111 = llvm.mlir.constant(1 : i64) : i64
    %112 = llvm.extractvalue %53[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %113 = llvm.getelementptr %104[%111] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %112, %113 : !llvm.ptr<i64>
    %114 = llvm.extractvalue %53[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %115 = llvm.getelementptr %105[%111] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %114, %115 : !llvm.ptr<i64>
    %116 = llvm.mlir.constant(2 : i64) : i64
    %117 = llvm.extractvalue %53[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %118 = llvm.getelementptr %104[%116] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %117, %118 : !llvm.ptr<i64>
    %119 = llvm.extractvalue %53[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %120 = llvm.getelementptr %105[%116] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %119, %120 : !llvm.ptr<i64>
    %121 = llvm.mlir.constant(3 : i64) : i64
    %122 = llvm.extractvalue %53[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %123 = llvm.getelementptr %104[%121] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %122, %123 : !llvm.ptr<i64>
    %124 = llvm.extractvalue %53[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %125 = llvm.getelementptr %105[%121] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %124, %125 : !llvm.ptr<i64>
    %126 = llvm.mlir.constant(4 : i64) : i64
    %127 = llvm.extractvalue %53[3, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %128 = llvm.getelementptr %104[%126] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %127, %128 : !llvm.ptr<i64>
    %129 = llvm.extractvalue %53[4, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %130 = llvm.getelementptr %105[%126] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %129, %130 : !llvm.ptr<i64>
    %131 = llvm.mlir.constant(1 : i64) : i64
    %132 = llvm.getelementptr %58[%131] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %97, %132 : !llvm.ptr<ptr<i8>>
    %133 = llvm.mlir.constant(2 : i64) : i64
    %134 = llvm.call @omTensorCreateUntyped(%133) : (i64) -> !llvm.ptr<i8>
    %135 = llvm.mlir.constant(1 : i64) : i64
    %136 = llvm.extractvalue %54[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %137 = llvm.bitcast %136 : !llvm.ptr<i64> to !llvm.ptr<i8>
    %138 = llvm.extractvalue %54[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %139 = llvm.bitcast %138 : !llvm.ptr<i64> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%134, %135, %137, %139) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %140 = llvm.mlir.constant(7 : i64) : i64
    llvm.call @omTensorSetDataType(%134, %140) : (!llvm.ptr<i8>, i64) -> ()
    %141 = llvm.call @omTensorGetShape(%134) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %142 = llvm.call @omTensorGetStrides(%134) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %143 = llvm.mlir.constant(0 : i64) : i64
    %144 = llvm.extractvalue %54[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %145 = llvm.getelementptr %141[%143] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %144, %145 : !llvm.ptr<i64>
    %146 = llvm.extractvalue %54[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %147 = llvm.getelementptr %142[%143] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %146, %147 : !llvm.ptr<i64>
    %148 = llvm.mlir.constant(1 : i64) : i64
    %149 = llvm.extractvalue %54[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %150 = llvm.getelementptr %141[%148] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %149, %150 : !llvm.ptr<i64>
    %151 = llvm.extractvalue %54[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %152 = llvm.getelementptr %142[%148] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %151, %152 : !llvm.ptr<i64>
    %153 = llvm.mlir.constant(2 : i64) : i64
    %154 = llvm.getelementptr %58[%153] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %134, %154 : !llvm.ptr<ptr<i8>>
    %155 = llvm.call @omTensorListCreate(%58, %55, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %155 : !llvm.ptr<i8>
  }
  llvm.mlir.global internal constant @_entry_point_arrays() {addr_space = 0 : i32} : !llvm.array<2 x ptr<i8>> {
    %0 = llvm.mlir.undef : !llvm.array<2 x ptr<i8>>
    %1 = llvm.mlir.addressof @_entry_point_0 : !llvm.ptr<array<15 x i8>>
    %2 = llvm.mlir.constant(0 : i64) : i64
    %3 = llvm.getelementptr %1[%2, %2] : (!llvm.ptr<array<15 x i8>>, i64, i64) -> !llvm.ptr<i8>
    %4 = llvm.insertvalue %3, %0[0] : !llvm.array<2 x ptr<i8>> 
    %5 = llvm.mlir.null : !llvm.ptr<i8>
    %6 = llvm.insertvalue %5, %4[1] : !llvm.array<2 x ptr<i8>> 
    llvm.return %6 : !llvm.array<2 x ptr<i8>>
  }
  llvm.func @omQueryEntryPoints(%arg0: !llvm.ptr<i64>) -> !llvm.ptr<ptr<i8>> {
    %0 = llvm.mlir.null : !llvm.ptr<i64>
    %1 = llvm.icmp "ne" %arg0, %0 : !llvm.ptr<i64>
    llvm.cond_br %1, ^bb1, ^bb2
  ^bb1:  // pred: ^bb0
    %2 = llvm.mlir.constant(0 : i64) : i64
    %3 = llvm.getelementptr %arg0[%2] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %4 = llvm.mlir.constant(1 : i64) : i64
    llvm.store %4, %3 : !llvm.ptr<i64>
    llvm.br ^bb2
  ^bb2:  // 2 preds: ^bb0, ^bb1
    %5 = llvm.mlir.addressof @_entry_point_arrays : !llvm.ptr<array<2 x ptr<i8>>>
    %6 = llvm.bitcast %5 : !llvm.ptr<array<2 x ptr<i8>>> to !llvm.ptr<ptr<i8>>
    llvm.return %6 : !llvm.ptr<ptr<i8>>
  }
  llvm.func @omInputSignature(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.mlir.constant(0 : i32) : i32
    %1 = llvm.mlir.addressof @_entry_point_0 : !llvm.ptr<array<15 x i8>>
    %2 = llvm.mlir.constant(0 : i64) : i64
    %3 = llvm.getelementptr %1[%2, %2] : (!llvm.ptr<array<15 x i8>>, i64, i64) -> !llvm.ptr<i8>
    %4 = llvm.mlir.constant(15 : i64) : i64
    %5 = llvm.call @strncmp(%arg0, %3, %4) : (!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
    %6 = llvm.icmp "eq" %5, %0 : i32
    llvm.cond_br %6, ^bb1, ^bb2
  ^bb1:  // pred: ^bb0
    %7 = llvm.mlir.addressof @_entry_point_0_in_sig : !llvm.ptr<array<76 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<76 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
  llvm.func @omOutputSignature(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.mlir.constant(0 : i32) : i32
    %1 = llvm.mlir.addressof @_entry_point_0 : !llvm.ptr<array<15 x i8>>
    %2 = llvm.mlir.constant(0 : i64) : i64
    %3 = llvm.getelementptr %1[%2, %2] : (!llvm.ptr<array<15 x i8>>, i64, i64) -> !llvm.ptr<i8>
    %4 = llvm.mlir.constant(15 : i64) : i64
    %5 = llvm.call @strncmp(%arg0, %3, %4) : (!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
    %6 = llvm.icmp "eq" %5, %0 : i32
    llvm.cond_br %6, ^bb1, ^bb2
  ^bb1:  // pred: ^bb0
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<211 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<211 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

