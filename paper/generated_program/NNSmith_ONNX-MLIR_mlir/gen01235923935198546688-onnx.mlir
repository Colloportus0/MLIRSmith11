module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v0_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i64\22 , \22dims\22 : [1 , 1] , \22name\22 : \22v5_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v3_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.mlir.global internal constant @constant_7(dense<1> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.mlir.global internal constant @constant_6(dense<-1> : tensor<i64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i64>
  llvm.mlir.global internal constant @constant_5(dense<1> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64) -> !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> attributes {input_names = ["v0_0"], llvm.emit_c_interface, output_names = ["v5_0", "v3_0"]} {
    %0 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %1 = llvm.insertvalue %arg0, %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %2 = llvm.insertvalue %arg1, %1[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %3 = llvm.insertvalue %arg2, %2[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %4 = llvm.insertvalue %arg3, %3[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %5 = llvm.insertvalue %arg7, %4[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %6 = llvm.insertvalue %arg4, %5[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %7 = llvm.insertvalue %arg8, %6[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %8 = llvm.insertvalue %arg5, %7[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %9 = llvm.insertvalue %arg9, %8[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %10 = llvm.insertvalue %arg6, %9[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %11 = llvm.insertvalue %arg10, %10[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %12 = llvm.mlir.constant(0 : i64) : i64
    %13 = llvm.mlir.constant(-1 : i64) : i64
    %14 = llvm.mlir.constant(-2147483648 : i32) : i32
    %15 = llvm.mlir.constant(3 : index) : i64
    %16 = llvm.mlir.constant(2 : index) : i64
    %17 = llvm.mlir.constant(1 : index) : i64
    %18 = llvm.mlir.constant(0 : index) : i64
    %19 = llvm.mlir.constant(1 : i64) : i64
    %20 = llvm.mlir.addressof @constant_5 : !llvm.ptr<array<4 x i64>>
    %21 = llvm.bitcast %20 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %22 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %23 = llvm.insertvalue %21, %22[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %24 = llvm.insertvalue %21, %23[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %25 = llvm.mlir.constant(0 : index) : i64
    %26 = llvm.insertvalue %25, %24[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %27 = llvm.mlir.constant(4 : index) : i64
    %28 = llvm.insertvalue %27, %26[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %29 = llvm.mlir.constant(1 : index) : i64
    %30 = llvm.insertvalue %29, %28[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %31 = llvm.mlir.addressof @constant_6 : !llvm.ptr<array<1 x i64>>
    %32 = llvm.bitcast %31 : !llvm.ptr<array<1 x i64>> to !llvm.ptr<i64>
    %33 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64)>
    %34 = llvm.insertvalue %32, %33[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %35 = llvm.insertvalue %32, %34[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %36 = llvm.mlir.constant(0 : index) : i64
    %37 = llvm.insertvalue %36, %35[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %38 = llvm.mlir.addressof @constant_7 : !llvm.ptr<array<4 x i64>>
    %39 = llvm.bitcast %38 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %40 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %41 = llvm.insertvalue %39, %40[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %42 = llvm.insertvalue %39, %41[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %43 = llvm.mlir.constant(0 : index) : i64
    %44 = llvm.insertvalue %43, %42[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %45 = llvm.mlir.constant(4 : index) : i64
    %46 = llvm.insertvalue %45, %44[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %47 = llvm.mlir.constant(1 : index) : i64
    %48 = llvm.insertvalue %47, %46[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %49 = llvm.mlir.constant(4 : index) : i64
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
    %73 = llvm.mlir.constant(4 : index) : i64
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
    %80 = llvm.mlir.constant(4 : index) : i64
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
    %104 = llvm.mlir.constant(4 : index) : i64
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
    %117 = llvm.mlir.constant(4 : index) : i64
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
    %141 = llvm.mlir.constant(4 : index) : i64
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
    %155 = llvm.mlir.constant(4 : index) : i64
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
    %179 = llvm.mlir.constant(4 : index) : i64
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
    %196 = llvm.extractvalue %177[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %197 = llvm.getelementptr %196[%18] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %198 = llvm.load %197 : !llvm.ptr<i64>
    %199 = llvm.extractvalue %177[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %200 = llvm.getelementptr %199[%17] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %201 = llvm.load %200 : !llvm.ptr<i64>
    %202 = llvm.extractvalue %177[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %203 = llvm.getelementptr %202[%16] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %204 = llvm.load %203 : !llvm.ptr<i64>
    %205 = llvm.extractvalue %177[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %206 = llvm.getelementptr %205[%15] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %207 = llvm.load %206 : !llvm.ptr<i64>
    %208 = llvm.mlir.constant(1 : index) : i64
    %209 = llvm.mul %207, %204  : i64
    %210 = llvm.mul %209, %201  : i64
    %211 = llvm.mul %210, %198  : i64
    %212 = llvm.mlir.null : !llvm.ptr<i32>
    %213 = llvm.getelementptr %212[%211] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %214 = llvm.ptrtoint %213 : !llvm.ptr<i32> to i64
    %215 = llvm.mlir.constant(16 : index) : i64
    %216 = llvm.add %214, %215  : i64
    %217 = llvm.call @malloc(%216) : (i64) -> !llvm.ptr<i8>
    %218 = llvm.bitcast %217 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %219 = llvm.ptrtoint %218 : !llvm.ptr<i32> to i64
    %220 = llvm.mlir.constant(1 : index) : i64
    %221 = llvm.sub %215, %220  : i64
    %222 = llvm.add %219, %221  : i64
    %223 = llvm.urem %222, %215  : i64
    %224 = llvm.sub %222, %223  : i64
    %225 = llvm.inttoptr %224 : i64 to !llvm.ptr<i32>
    %226 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %227 = llvm.insertvalue %218, %226[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %228 = llvm.insertvalue %225, %227[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %229 = llvm.mlir.constant(0 : index) : i64
    %230 = llvm.insertvalue %229, %228[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %231 = llvm.insertvalue %198, %230[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %232 = llvm.insertvalue %201, %231[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %233 = llvm.insertvalue %204, %232[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %234 = llvm.insertvalue %207, %233[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %235 = llvm.insertvalue %210, %234[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %236 = llvm.insertvalue %209, %235[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %237 = llvm.insertvalue %207, %236[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %238 = llvm.insertvalue %208, %237[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %239 = llvm.mlir.constant(0 : index) : i64
    %240 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%239 : i64)
  ^bb13(%241: i64):  // 2 preds: ^bb12, ^bb23
    %242 = llvm.icmp "slt" %241, %198 : i64
    llvm.cond_br %242, ^bb14, ^bb24
  ^bb14:  // pred: ^bb13
    %243 = llvm.mlir.constant(0 : index) : i64
    %244 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb15(%243 : i64)
  ^bb15(%245: i64):  // 2 preds: ^bb14, ^bb22
    %246 = llvm.icmp "slt" %245, %201 : i64
    llvm.cond_br %246, ^bb16, ^bb23
  ^bb16:  // pred: ^bb15
    %247 = llvm.mlir.constant(0 : index) : i64
    %248 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb17(%247 : i64)
  ^bb17(%249: i64):  // 2 preds: ^bb16, ^bb21
    %250 = llvm.icmp "slt" %249, %204 : i64
    llvm.cond_br %250, ^bb18, ^bb22
  ^bb18:  // pred: ^bb17
    %251 = llvm.mlir.constant(0 : index) : i64
    %252 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%251 : i64)
  ^bb19(%253: i64):  // 2 preds: ^bb18, ^bb20
    %254 = llvm.icmp "slt" %253, %207 : i64
    llvm.cond_br %254, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %255 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %256 = llvm.add %18, %18  : i64
    %257 = llvm.add %256, %18  : i64
    %258 = llvm.add %257, %18  : i64
    %259 = llvm.getelementptr %255[%258] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %260 = llvm.load %259 : !llvm.ptr<i32>
    %261 = llvm.extractvalue %238[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %262 = llvm.extractvalue %238[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %263 = llvm.mul %241, %262  : i64
    %264 = llvm.extractvalue %238[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %265 = llvm.mul %245, %264  : i64
    %266 = llvm.add %263, %265  : i64
    %267 = llvm.extractvalue %238[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %268 = llvm.mul %249, %267  : i64
    %269 = llvm.add %266, %268  : i64
    %270 = llvm.add %269, %253  : i64
    %271 = llvm.getelementptr %261[%270] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %260, %271 : !llvm.ptr<i32>
    %272 = llvm.add %253, %252  : i64
    llvm.br ^bb19(%272 : i64)
  ^bb21:  // pred: ^bb19
    %273 = llvm.add %249, %248  : i64
    llvm.br ^bb17(%273 : i64)
  ^bb22:  // pred: ^bb17
    %274 = llvm.add %245, %244  : i64
    llvm.br ^bb15(%274 : i64)
  ^bb23:  // pred: ^bb15
    %275 = llvm.add %241, %240  : i64
    llvm.br ^bb13(%275 : i64)
  ^bb24:  // pred: ^bb13
    %276 = llvm.mlir.constant(1 : index) : i64
    %277 = llvm.mul %207, %204  : i64
    %278 = llvm.mul %277, %201  : i64
    %279 = llvm.mul %278, %198  : i64
    %280 = llvm.mlir.null : !llvm.ptr<i32>
    %281 = llvm.getelementptr %280[%279] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
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
    %294 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %295 = llvm.insertvalue %286, %294[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %296 = llvm.insertvalue %293, %295[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %297 = llvm.mlir.constant(0 : index) : i64
    %298 = llvm.insertvalue %297, %296[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %299 = llvm.insertvalue %198, %298[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %300 = llvm.insertvalue %201, %299[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %301 = llvm.insertvalue %204, %300[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %302 = llvm.insertvalue %207, %301[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %303 = llvm.insertvalue %278, %302[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %304 = llvm.insertvalue %277, %303[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %305 = llvm.insertvalue %207, %304[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %306 = llvm.insertvalue %276, %305[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %307 = llvm.icmp "sgt" %198, %17 : i64
    %308 = llvm.icmp "sgt" %201, %17 : i64
    %309 = llvm.icmp "sgt" %204, %17 : i64
    %310 = llvm.icmp "sgt" %207, %17 : i64
    %311 = llvm.icmp "sgt" %198, %17 : i64
    %312 = llvm.icmp "sgt" %201, %17 : i64
    %313 = llvm.icmp "sgt" %204, %17 : i64
    %314 = llvm.icmp "sgt" %207, %17 : i64
    %315 = llvm.mlir.constant(0 : index) : i64
    %316 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb25(%315 : i64)
  ^bb25(%317: i64):  // 2 preds: ^bb24, ^bb35
    %318 = llvm.icmp "slt" %317, %198 : i64
    llvm.cond_br %318, ^bb26, ^bb36
  ^bb26:  // pred: ^bb25
    %319 = llvm.mlir.constant(0 : index) : i64
    %320 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb27(%319 : i64)
  ^bb27(%321: i64):  // 2 preds: ^bb26, ^bb34
    %322 = llvm.icmp "slt" %321, %201 : i64
    llvm.cond_br %322, ^bb28, ^bb35
  ^bb28:  // pred: ^bb27
    %323 = llvm.mlir.constant(0 : index) : i64
    %324 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb29(%323 : i64)
  ^bb29(%325: i64):  // 2 preds: ^bb28, ^bb33
    %326 = llvm.icmp "slt" %325, %204 : i64
    llvm.cond_br %326, ^bb30, ^bb34
  ^bb30:  // pred: ^bb29
    %327 = llvm.mlir.constant(0 : index) : i64
    %328 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb31(%327 : i64)
  ^bb31(%329: i64):  // 2 preds: ^bb30, ^bb32
    %330 = llvm.icmp "slt" %329, %207 : i64
    llvm.cond_br %330, ^bb32, ^bb33
  ^bb32:  // pred: ^bb31
    %331 = llvm.select %307, %317, %18 : i1, i64
    %332 = llvm.select %308, %321, %18 : i1, i64
    %333 = llvm.select %309, %325, %18 : i1, i64
    %334 = llvm.select %310, %329, %18 : i1, i64
    %335 = llvm.extractvalue %238[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %336 = llvm.extractvalue %238[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %337 = llvm.mul %331, %336  : i64
    %338 = llvm.extractvalue %238[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %339 = llvm.mul %332, %338  : i64
    %340 = llvm.add %337, %339  : i64
    %341 = llvm.extractvalue %238[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %342 = llvm.mul %333, %341  : i64
    %343 = llvm.add %340, %342  : i64
    %344 = llvm.add %343, %334  : i64
    %345 = llvm.getelementptr %335[%344] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %346 = llvm.load %345 : !llvm.ptr<i32>
    %347 = llvm.select %311, %317, %18 : i1, i64
    %348 = llvm.select %312, %321, %18 : i1, i64
    %349 = llvm.select %313, %325, %18 : i1, i64
    %350 = llvm.select %314, %329, %18 : i1, i64
    %351 = llvm.extractvalue %238[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %352 = llvm.extractvalue %238[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %353 = llvm.mul %347, %352  : i64
    %354 = llvm.extractvalue %238[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %355 = llvm.mul %348, %354  : i64
    %356 = llvm.add %353, %355  : i64
    %357 = llvm.extractvalue %238[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %358 = llvm.mul %349, %357  : i64
    %359 = llvm.add %356, %358  : i64
    %360 = llvm.add %359, %350  : i64
    %361 = llvm.getelementptr %351[%360] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %362 = llvm.load %361 : !llvm.ptr<i32>
    %363 = llvm.mul %346, %362  : i32
    %364 = llvm.extractvalue %306[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %365 = llvm.extractvalue %306[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %366 = llvm.mul %317, %365  : i64
    %367 = llvm.extractvalue %306[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %368 = llvm.mul %321, %367  : i64
    %369 = llvm.add %366, %368  : i64
    %370 = llvm.extractvalue %306[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %371 = llvm.mul %325, %370  : i64
    %372 = llvm.add %369, %371  : i64
    %373 = llvm.add %372, %329  : i64
    %374 = llvm.getelementptr %364[%373] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %363, %374 : !llvm.ptr<i32>
    %375 = llvm.add %329, %328  : i64
    llvm.br ^bb31(%375 : i64)
  ^bb33:  // pred: ^bb31
    %376 = llvm.add %325, %324  : i64
    llvm.br ^bb29(%376 : i64)
  ^bb34:  // pred: ^bb29
    %377 = llvm.add %321, %320  : i64
    llvm.br ^bb27(%377 : i64)
  ^bb35:  // pred: ^bb27
    %378 = llvm.add %317, %316  : i64
    llvm.br ^bb25(%378 : i64)
  ^bb36:  // pred: ^bb25
    %379 = llvm.mlir.constant(1 : index) : i64
    %380 = llvm.mul %204, %201  : i64
    %381 = llvm.mul %380, %198  : i64
    %382 = llvm.mlir.null : !llvm.ptr<i32>
    %383 = llvm.getelementptr %382[%381] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %384 = llvm.ptrtoint %383 : !llvm.ptr<i32> to i64
    %385 = llvm.mlir.constant(16 : index) : i64
    %386 = llvm.add %384, %385  : i64
    %387 = llvm.call @malloc(%386) : (i64) -> !llvm.ptr<i8>
    %388 = llvm.bitcast %387 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %389 = llvm.ptrtoint %388 : !llvm.ptr<i32> to i64
    %390 = llvm.mlir.constant(1 : index) : i64
    %391 = llvm.sub %385, %390  : i64
    %392 = llvm.add %389, %391  : i64
    %393 = llvm.urem %392, %385  : i64
    %394 = llvm.sub %392, %393  : i64
    %395 = llvm.inttoptr %394 : i64 to !llvm.ptr<i32>
    %396 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>
    %397 = llvm.insertvalue %388, %396[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %398 = llvm.insertvalue %395, %397[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %399 = llvm.mlir.constant(0 : index) : i64
    %400 = llvm.insertvalue %399, %398[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %401 = llvm.insertvalue %198, %400[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %402 = llvm.insertvalue %201, %401[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %403 = llvm.insertvalue %204, %402[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %404 = llvm.insertvalue %380, %403[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %405 = llvm.insertvalue %204, %404[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %406 = llvm.insertvalue %379, %405[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %407 = llvm.mlir.constant(0 : index) : i64
    %408 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb37(%407 : i64)
  ^bb37(%409: i64):  // 2 preds: ^bb36, ^bb44
    %410 = llvm.icmp "slt" %409, %198 : i64
    llvm.cond_br %410, ^bb38, ^bb45
  ^bb38:  // pred: ^bb37
    %411 = llvm.mlir.constant(0 : index) : i64
    %412 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb39(%411 : i64)
  ^bb39(%413: i64):  // 2 preds: ^bb38, ^bb43
    %414 = llvm.icmp "slt" %413, %201 : i64
    llvm.cond_br %414, ^bb40, ^bb44
  ^bb40:  // pred: ^bb39
    %415 = llvm.mlir.constant(0 : index) : i64
    %416 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb41(%415 : i64)
  ^bb41(%417: i64):  // 2 preds: ^bb40, ^bb42
    %418 = llvm.icmp "slt" %417, %204 : i64
    llvm.cond_br %418, ^bb42, ^bb43
  ^bb42:  // pred: ^bb41
    %419 = llvm.extractvalue %406[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %420 = llvm.extractvalue %406[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %421 = llvm.mul %409, %420  : i64
    %422 = llvm.extractvalue %406[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %423 = llvm.mul %413, %422  : i64
    %424 = llvm.add %421, %423  : i64
    %425 = llvm.add %424, %417  : i64
    %426 = llvm.getelementptr %419[%425] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %14, %426 : !llvm.ptr<i32>
    %427 = llvm.add %417, %416  : i64
    llvm.br ^bb41(%427 : i64)
  ^bb43:  // pred: ^bb41
    %428 = llvm.add %413, %412  : i64
    llvm.br ^bb39(%428 : i64)
  ^bb44:  // pred: ^bb39
    %429 = llvm.add %409, %408  : i64
    llvm.br ^bb37(%429 : i64)
  ^bb45:  // pred: ^bb37
    %430 = llvm.mlir.constant(0 : index) : i64
    %431 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb46(%430 : i64)
  ^bb46(%432: i64):  // 2 preds: ^bb45, ^bb56
    %433 = llvm.icmp "slt" %432, %198 : i64
    llvm.cond_br %433, ^bb47, ^bb57
  ^bb47:  // pred: ^bb46
    %434 = llvm.mlir.constant(0 : index) : i64
    %435 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb48(%434 : i64)
  ^bb48(%436: i64):  // 2 preds: ^bb47, ^bb55
    %437 = llvm.icmp "slt" %436, %201 : i64
    llvm.cond_br %437, ^bb49, ^bb56
  ^bb49:  // pred: ^bb48
    %438 = llvm.mlir.constant(0 : index) : i64
    %439 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb50(%438 : i64)
  ^bb50(%440: i64):  // 2 preds: ^bb49, ^bb54
    %441 = llvm.icmp "slt" %440, %204 : i64
    llvm.cond_br %441, ^bb51, ^bb55
  ^bb51:  // pred: ^bb50
    %442 = llvm.mlir.constant(0 : index) : i64
    %443 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb52(%442 : i64)
  ^bb52(%444: i64):  // 2 preds: ^bb51, ^bb53
    %445 = llvm.icmp "slt" %444, %207 : i64
    llvm.cond_br %445, ^bb53, ^bb54
  ^bb53:  // pred: ^bb52
    %446 = llvm.extractvalue %306[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %447 = llvm.extractvalue %306[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %448 = llvm.mul %432, %447  : i64
    %449 = llvm.extractvalue %306[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %450 = llvm.mul %436, %449  : i64
    %451 = llvm.add %448, %450  : i64
    %452 = llvm.extractvalue %306[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %453 = llvm.mul %440, %452  : i64
    %454 = llvm.add %451, %453  : i64
    %455 = llvm.add %454, %444  : i64
    %456 = llvm.getelementptr %446[%455] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %457 = llvm.load %456 : !llvm.ptr<i32>
    %458 = llvm.extractvalue %406[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %459 = llvm.extractvalue %406[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %460 = llvm.mul %432, %459  : i64
    %461 = llvm.extractvalue %406[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %462 = llvm.mul %436, %461  : i64
    %463 = llvm.add %460, %462  : i64
    %464 = llvm.add %463, %440  : i64
    %465 = llvm.getelementptr %458[%464] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %466 = llvm.load %465 : !llvm.ptr<i32>
    %467 = llvm.icmp "sgt" %466, %457 : i32
    %468 = llvm.select %467, %466, %457 : i1, i32
    %469 = llvm.extractvalue %406[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %470 = llvm.extractvalue %406[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %471 = llvm.mul %432, %470  : i64
    %472 = llvm.extractvalue %406[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %473 = llvm.mul %436, %472  : i64
    %474 = llvm.add %471, %473  : i64
    %475 = llvm.add %474, %440  : i64
    %476 = llvm.getelementptr %469[%475] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %468, %476 : !llvm.ptr<i32>
    %477 = llvm.add %444, %443  : i64
    llvm.br ^bb52(%477 : i64)
  ^bb54:  // pred: ^bb52
    %478 = llvm.add %440, %439  : i64
    llvm.br ^bb50(%478 : i64)
  ^bb55:  // pred: ^bb50
    %479 = llvm.add %436, %435  : i64
    llvm.br ^bb48(%479 : i64)
  ^bb56:  // pred: ^bb48
    %480 = llvm.add %432, %431  : i64
    llvm.br ^bb46(%480 : i64)
  ^bb57:  // pred: ^bb46
    %481 = llvm.mlir.constant(1 : index) : i64
    %482 = llvm.mlir.constant(1 : index) : i64
    %483 = llvm.mlir.constant(1 : index) : i64
    %484 = llvm.mlir.null : !llvm.ptr<i64>
    %485 = llvm.getelementptr %484[%481] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %486 = llvm.ptrtoint %485 : !llvm.ptr<i64> to i64
    %487 = llvm.mlir.constant(16 : index) : i64
    %488 = llvm.add %486, %487  : i64
    %489 = llvm.call @malloc(%488) : (i64) -> !llvm.ptr<i8>
    %490 = llvm.bitcast %489 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %491 = llvm.ptrtoint %490 : !llvm.ptr<i64> to i64
    %492 = llvm.mlir.constant(1 : index) : i64
    %493 = llvm.sub %487, %492  : i64
    %494 = llvm.add %491, %493  : i64
    %495 = llvm.urem %494, %487  : i64
    %496 = llvm.sub %494, %495  : i64
    %497 = llvm.inttoptr %496 : i64 to !llvm.ptr<i64>
    %498 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>
    %499 = llvm.insertvalue %490, %498[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %500 = llvm.insertvalue %497, %499[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %501 = llvm.mlir.constant(0 : index) : i64
    %502 = llvm.insertvalue %501, %500[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %503 = llvm.insertvalue %481, %502[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %504 = llvm.insertvalue %482, %503[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %505 = llvm.insertvalue %482, %504[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %506 = llvm.insertvalue %483, %505[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %507 = llvm.mlir.constant(0 : index) : i64
    %508 = llvm.mlir.constant(1 : index) : i64
    %509 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb58(%507 : i64)
  ^bb58(%510: i64):  // 2 preds: ^bb57, ^bb62
    %511 = llvm.icmp "slt" %510, %508 : i64
    llvm.cond_br %511, ^bb59, ^bb63
  ^bb59:  // pred: ^bb58
    %512 = llvm.mlir.constant(0 : index) : i64
    %513 = llvm.mlir.constant(1 : index) : i64
    %514 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb60(%512 : i64)
  ^bb60(%515: i64):  // 2 preds: ^bb59, ^bb61
    %516 = llvm.icmp "slt" %515, %513 : i64
    llvm.cond_br %516, ^bb61, ^bb62
  ^bb61:  // pred: ^bb60
    %517 = llvm.extractvalue %506[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %518 = llvm.add %510, %515  : i64
    %519 = llvm.getelementptr %517[%518] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %13, %519 : !llvm.ptr<i64>
    %520 = llvm.add %515, %514  : i64
    llvm.br ^bb60(%520 : i64)
  ^bb62:  // pred: ^bb60
    %521 = llvm.add %510, %509  : i64
    llvm.br ^bb58(%521 : i64)
  ^bb63:  // pred: ^bb58
    %522 = llvm.mlir.constant(0 : index) : i64
    %523 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb64(%522 : i64)
  ^bb64(%524: i64):  // 2 preds: ^bb63, ^bb71
    %525 = llvm.icmp "slt" %524, %198 : i64
    llvm.cond_br %525, ^bb65, ^bb72
  ^bb65:  // pred: ^bb64
    %526 = llvm.mlir.constant(0 : index) : i64
    %527 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb66(%526 : i64)
  ^bb66(%528: i64):  // 2 preds: ^bb65, ^bb70
    %529 = llvm.icmp "slt" %528, %201 : i64
    llvm.cond_br %529, ^bb67, ^bb71
  ^bb67:  // pred: ^bb66
    %530 = llvm.mlir.constant(0 : index) : i64
    %531 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb68(%530 : i64)
  ^bb68(%532: i64):  // 2 preds: ^bb67, ^bb69
    %533 = llvm.icmp "slt" %532, %204 : i64
    llvm.cond_br %533, ^bb69, ^bb70
  ^bb69:  // pred: ^bb68
    %534 = llvm.extractvalue %406[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %535 = llvm.extractvalue %406[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %536 = llvm.mul %524, %535  : i64
    %537 = llvm.extractvalue %406[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %538 = llvm.mul %528, %537  : i64
    %539 = llvm.add %536, %538  : i64
    %540 = llvm.add %539, %532  : i64
    %541 = llvm.getelementptr %534[%540] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %542 = llvm.load %541 : !llvm.ptr<i32>
    %543 = llvm.extractvalue %506[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %544 = llvm.add %524, %532  : i64
    %545 = llvm.getelementptr %543[%544] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %546 = llvm.load %545 : !llvm.ptr<i64>
    %547 = llvm.icmp "slt" %546, %12 : i64
    %548 = llvm.select %547, %12, %546 : i1, i64
    %549 = llvm.extractvalue %406[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %550 = llvm.extractvalue %406[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %551 = llvm.mul %524, %550  : i64
    %552 = llvm.extractvalue %406[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %553 = llvm.mul %548, %552  : i64
    %554 = llvm.add %551, %553  : i64
    %555 = llvm.add %554, %532  : i64
    %556 = llvm.getelementptr %549[%555] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %557 = llvm.load %556 : !llvm.ptr<i32>
    %558 = llvm.icmp "sgt" %542, %557 : i32
    %559 = llvm.select %558, %528, %548 : i1, i64
    %560 = llvm.extractvalue %506[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %561 = llvm.add %524, %532  : i64
    %562 = llvm.getelementptr %560[%561] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %559, %562 : !llvm.ptr<i64>
    %563 = llvm.add %532, %531  : i64
    llvm.br ^bb68(%563 : i64)
  ^bb70:  // pred: ^bb68
    %564 = llvm.add %528, %527  : i64
    llvm.br ^bb66(%564 : i64)
  ^bb71:  // pred: ^bb66
    %565 = llvm.add %524, %523  : i64
    llvm.br ^bb64(%565 : i64)
  ^bb72:  // pred: ^bb64
    %566 = llvm.icmp "slt" %204, %18 : i64
    %567 = llvm.select %566, %204, %18 : i1, i64
    %568 = llvm.mlir.constant(1 : index) : i64
    %569 = llvm.mlir.constant(1 : index) : i64
    %570 = llvm.mlir.constant(1 : index) : i64
    %571 = llvm.mlir.constant(1 : index) : i64
    %572 = llvm.mlir.constant(1 : index) : i64
    %573 = llvm.mlir.null : !llvm.ptr<i32>
    %574 = llvm.getelementptr %573[%568] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %575 = llvm.ptrtoint %574 : !llvm.ptr<i32> to i64
    %576 = llvm.mlir.constant(16 : index) : i64
    %577 = llvm.add %575, %576  : i64
    %578 = llvm.call @malloc(%577) : (i64) -> !llvm.ptr<i8>
    %579 = llvm.bitcast %578 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %580 = llvm.ptrtoint %579 : !llvm.ptr<i32> to i64
    %581 = llvm.mlir.constant(1 : index) : i64
    %582 = llvm.sub %576, %581  : i64
    %583 = llvm.add %580, %582  : i64
    %584 = llvm.urem %583, %576  : i64
    %585 = llvm.sub %583, %584  : i64
    %586 = llvm.inttoptr %585 : i64 to !llvm.ptr<i32>
    %587 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %588 = llvm.insertvalue %579, %587[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %589 = llvm.insertvalue %586, %588[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %590 = llvm.mlir.constant(0 : index) : i64
    %591 = llvm.insertvalue %590, %589[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %592 = llvm.insertvalue %568, %591[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %593 = llvm.insertvalue %569, %592[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %594 = llvm.insertvalue %570, %593[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %595 = llvm.insertvalue %571, %594[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %596 = llvm.insertvalue %569, %595[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %597 = llvm.insertvalue %570, %596[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %598 = llvm.insertvalue %571, %597[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %599 = llvm.insertvalue %572, %598[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %600 = llvm.mlir.constant(0 : index) : i64
    %601 = llvm.mlir.constant(1 : index) : i64
    %602 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb73(%600 : i64)
  ^bb73(%603: i64):  // 2 preds: ^bb72, ^bb83
    %604 = llvm.icmp "slt" %603, %601 : i64
    llvm.cond_br %604, ^bb74, ^bb84
  ^bb74:  // pred: ^bb73
    %605 = llvm.mlir.constant(0 : index) : i64
    %606 = llvm.mlir.constant(1 : index) : i64
    %607 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb75(%605 : i64)
  ^bb75(%608: i64):  // 2 preds: ^bb74, ^bb82
    %609 = llvm.icmp "slt" %608, %606 : i64
    llvm.cond_br %609, ^bb76, ^bb83
  ^bb76:  // pred: ^bb75
    %610 = llvm.mlir.constant(0 : index) : i64
    %611 = llvm.mlir.constant(1 : index) : i64
    %612 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb77(%610 : i64)
  ^bb77(%613: i64):  // 2 preds: ^bb76, ^bb81
    %614 = llvm.icmp "slt" %613, %611 : i64
    llvm.cond_br %614, ^bb78, ^bb82
  ^bb78:  // pred: ^bb77
    %615 = llvm.mlir.constant(0 : index) : i64
    %616 = llvm.mlir.constant(1 : index) : i64
    %617 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb79(%615 : i64)
  ^bb79(%618: i64):  // 2 preds: ^bb78, ^bb80
    %619 = llvm.icmp "slt" %618, %616 : i64
    llvm.cond_br %619, ^bb80, ^bb81
  ^bb80:  // pred: ^bb79
    %620 = llvm.add %613, %567  : i64
    %621 = llvm.extractvalue %306[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %622 = llvm.extractvalue %306[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %623 = llvm.mul %603, %622  : i64
    %624 = llvm.extractvalue %306[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %625 = llvm.mul %608, %624  : i64
    %626 = llvm.add %623, %625  : i64
    %627 = llvm.extractvalue %306[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %628 = llvm.mul %620, %627  : i64
    %629 = llvm.add %626, %628  : i64
    %630 = llvm.add %629, %618  : i64
    %631 = llvm.getelementptr %621[%630] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %632 = llvm.load %631 : !llvm.ptr<i32>
    %633 = llvm.extractvalue %599[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %634 = llvm.add %603, %608  : i64
    %635 = llvm.add %634, %613  : i64
    %636 = llvm.add %635, %618  : i64
    %637 = llvm.getelementptr %633[%636] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %632, %637 : !llvm.ptr<i32>
    %638 = llvm.add %618, %617  : i64
    llvm.br ^bb79(%638 : i64)
  ^bb81:  // pred: ^bb79
    %639 = llvm.add %613, %612  : i64
    llvm.br ^bb77(%639 : i64)
  ^bb82:  // pred: ^bb77
    %640 = llvm.add %608, %607  : i64
    llvm.br ^bb75(%640 : i64)
  ^bb83:  // pred: ^bb75
    %641 = llvm.add %603, %602  : i64
    llvm.br ^bb73(%641 : i64)
  ^bb84:  // pred: ^bb73
    %642 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    %643 = llvm.insertvalue %506, %642[0] : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %644 = llvm.insertvalue %599, %643[1] : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    llvm.return %644 : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) attributes {input_names = ["v0_0"], llvm.emit_c_interface, output_names = ["v5_0", "v3_0"]} {
    %0 = llvm.load %arg1 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %1 = llvm.extractvalue %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %2 = llvm.extractvalue %0[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %3 = llvm.extractvalue %0[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %4 = llvm.extractvalue %0[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %5 = llvm.extractvalue %0[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %6 = llvm.extractvalue %0[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %7 = llvm.extractvalue %0[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %8 = llvm.extractvalue %0[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %9 = llvm.extractvalue %0[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %10 = llvm.extractvalue %0[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %11 = llvm.extractvalue %0[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %12 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    llvm.store %12, %arg0 : !llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %3 = llvm.mlir.constant(0 : i64) : i64
    %4 = llvm.getelementptr %0[%3] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %5 = llvm.load %4 : !llvm.ptr<ptr<i8>>
    %6 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %7 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %8 = llvm.call @omTensorGetDataPtr(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %9 = llvm.bitcast %8 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %10 = llvm.insertvalue %9, %7[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %11 = llvm.insertvalue %9, %10[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %12 = llvm.mlir.constant(0 : i64) : i64
    %13 = llvm.insertvalue %12, %11[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %14 = llvm.call @omTensorGetShape(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %15 = llvm.call @omTensorGetStrides(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %16 = llvm.mlir.constant(0 : i64) : i64
    %17 = llvm.getelementptr %14[%16] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %18 = llvm.load %17 : !llvm.ptr<i64>
    %19 = llvm.insertvalue %18, %13[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %20 = llvm.getelementptr %15[%16] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %21 = llvm.load %20 : !llvm.ptr<i64>
    %22 = llvm.insertvalue %21, %19[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %23 = llvm.mlir.constant(1 : i64) : i64
    %24 = llvm.getelementptr %14[%23] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %25 = llvm.load %24 : !llvm.ptr<i64>
    %26 = llvm.insertvalue %25, %22[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %27 = llvm.getelementptr %15[%23] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %28 = llvm.load %27 : !llvm.ptr<i64>
    %29 = llvm.insertvalue %28, %26[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %30 = llvm.mlir.constant(2 : i64) : i64
    %31 = llvm.getelementptr %14[%30] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %32 = llvm.load %31 : !llvm.ptr<i64>
    %33 = llvm.insertvalue %32, %29[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %34 = llvm.getelementptr %15[%30] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %35 = llvm.load %34 : !llvm.ptr<i64>
    %36 = llvm.insertvalue %35, %33[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %37 = llvm.mlir.constant(3 : i64) : i64
    %38 = llvm.getelementptr %14[%37] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %39 = llvm.load %38 : !llvm.ptr<i64>
    %40 = llvm.insertvalue %39, %36[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %41 = llvm.getelementptr %15[%37] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %42 = llvm.load %41 : !llvm.ptr<i64>
    %43 = llvm.insertvalue %42, %40[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    llvm.store %43, %6 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    llvm.call @_mlir_ciface_main_graph(%2, %6) : (!llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) -> ()
    %44 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %45 = llvm.extractvalue %44[0] : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %46 = llvm.extractvalue %44[1] : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %47 = llvm.mlir.constant(2 : i64) : i64
    %48 = llvm.mlir.constant(16 : i64) : i64
    %49 = llvm.call @malloc(%48) : (i64) -> !llvm.ptr<i8>
    %50 = llvm.bitcast %49 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %51 = llvm.mlir.constant(2 : i64) : i64
    %52 = llvm.call @omTensorCreateUntyped(%51) : (i64) -> !llvm.ptr<i8>
    %53 = llvm.mlir.constant(1 : i64) : i64
    %54 = llvm.extractvalue %45[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %55 = llvm.bitcast %54 : !llvm.ptr<i64> to !llvm.ptr<i8>
    %56 = llvm.extractvalue %45[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %57 = llvm.bitcast %56 : !llvm.ptr<i64> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%52, %53, %55, %57) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %58 = llvm.mlir.constant(7 : i64) : i64
    llvm.call @omTensorSetDataType(%52, %58) : (!llvm.ptr<i8>, i64) -> ()
    %59 = llvm.call @omTensorGetShape(%52) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %60 = llvm.call @omTensorGetStrides(%52) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %61 = llvm.mlir.constant(0 : i64) : i64
    %62 = llvm.extractvalue %45[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %63 = llvm.getelementptr %59[%61] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %62, %63 : !llvm.ptr<i64>
    %64 = llvm.extractvalue %45[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %65 = llvm.getelementptr %60[%61] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %64, %65 : !llvm.ptr<i64>
    %66 = llvm.mlir.constant(1 : i64) : i64
    %67 = llvm.extractvalue %45[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %68 = llvm.getelementptr %59[%66] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %67, %68 : !llvm.ptr<i64>
    %69 = llvm.extractvalue %45[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %70 = llvm.getelementptr %60[%66] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %69, %70 : !llvm.ptr<i64>
    %71 = llvm.mlir.constant(0 : i64) : i64
    %72 = llvm.getelementptr %50[%71] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %52, %72 : !llvm.ptr<ptr<i8>>
    %73 = llvm.mlir.constant(4 : i64) : i64
    %74 = llvm.call @omTensorCreateUntyped(%73) : (i64) -> !llvm.ptr<i8>
    %75 = llvm.mlir.constant(1 : i64) : i64
    %76 = llvm.extractvalue %46[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %77 = llvm.bitcast %76 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %78 = llvm.extractvalue %46[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %79 = llvm.bitcast %78 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%74, %75, %77, %79) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %80 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%74, %80) : (!llvm.ptr<i8>, i64) -> ()
    %81 = llvm.call @omTensorGetShape(%74) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %82 = llvm.call @omTensorGetStrides(%74) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %83 = llvm.mlir.constant(0 : i64) : i64
    %84 = llvm.extractvalue %46[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %85 = llvm.getelementptr %81[%83] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %84, %85 : !llvm.ptr<i64>
    %86 = llvm.extractvalue %46[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %87 = llvm.getelementptr %82[%83] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %86, %87 : !llvm.ptr<i64>
    %88 = llvm.mlir.constant(1 : i64) : i64
    %89 = llvm.extractvalue %46[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %90 = llvm.getelementptr %81[%88] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %89, %90 : !llvm.ptr<i64>
    %91 = llvm.extractvalue %46[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %92 = llvm.getelementptr %82[%88] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %91, %92 : !llvm.ptr<i64>
    %93 = llvm.mlir.constant(2 : i64) : i64
    %94 = llvm.extractvalue %46[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %95 = llvm.getelementptr %81[%93] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %94, %95 : !llvm.ptr<i64>
    %96 = llvm.extractvalue %46[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %97 = llvm.getelementptr %82[%93] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %96, %97 : !llvm.ptr<i64>
    %98 = llvm.mlir.constant(3 : i64) : i64
    %99 = llvm.extractvalue %46[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %100 = llvm.getelementptr %81[%98] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %99, %100 : !llvm.ptr<i64>
    %101 = llvm.extractvalue %46[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %102 = llvm.getelementptr %82[%98] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %101, %102 : !llvm.ptr<i64>
    %103 = llvm.mlir.constant(1 : i64) : i64
    %104 = llvm.getelementptr %50[%103] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %74, %104 : !llvm.ptr<ptr<i8>>
    %105 = llvm.call @omTensorListCreate(%50, %47, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %105 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_in_sig : !llvm.ptr<array<72 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<72 x i8>> to !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<133 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<133 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

