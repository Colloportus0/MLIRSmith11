module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 2] , \22name\22 : \22v6_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 2] , \22name\22 : \22v5_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 2] , \22name\22 : \22v0_0\22 }\0A ,    { \22type\22 : \22i64\22 , \22dims\22 : [1 , 1 , 2] , \22name\22 : \22v4_0\22 }\0A ,    { \22type\22 : \22i1\22 , \22dims\22 : [1 , 1 , 1 , 2] , \22name\22 : \22v1_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.mlir.global internal constant @constant_4(dense<[1, 1, 1, 2]> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.mlir.global internal constant @constant_3(dense<-1> : tensor<i64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i64>
  llvm.mlir.global internal constant @constant_2(dense<[1, 1, 1, 2]> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64, %arg11: !llvm.ptr<i32>, %arg12: !llvm.ptr<i32>, %arg13: i64, %arg14: i64, %arg15: i64, %arg16: i64, %arg17: i64, %arg18: i64, %arg19: i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> attributes {input_names = ["v6_0", "v5_0"], llvm.emit_c_interface, output_names = ["v0_0", "v4_0", "v1_0"]} {
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
    %12 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>
    %13 = llvm.insertvalue %arg11, %12[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %14 = llvm.insertvalue %arg12, %13[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %15 = llvm.insertvalue %arg13, %14[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %16 = llvm.insertvalue %arg14, %15[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %17 = llvm.insertvalue %arg17, %16[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %18 = llvm.insertvalue %arg15, %17[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %19 = llvm.insertvalue %arg18, %18[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %20 = llvm.insertvalue %arg16, %19[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %21 = llvm.insertvalue %arg19, %20[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %22 = llvm.mlir.constant(0 : i64) : i64
    %23 = llvm.mlir.constant(1 : i64) : i64
    %24 = llvm.mlir.constant(0 : index) : i64
    %25 = llvm.mlir.addressof @constant_2 : !llvm.ptr<array<4 x i64>>
    %26 = llvm.bitcast %25 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %27 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %28 = llvm.insertvalue %26, %27[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %29 = llvm.insertvalue %26, %28[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %30 = llvm.mlir.constant(0 : index) : i64
    %31 = llvm.insertvalue %30, %29[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %32 = llvm.mlir.constant(4 : index) : i64
    %33 = llvm.insertvalue %32, %31[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %34 = llvm.mlir.constant(1 : index) : i64
    %35 = llvm.insertvalue %34, %33[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %36 = llvm.mlir.addressof @constant_3 : !llvm.ptr<array<1 x i64>>
    %37 = llvm.bitcast %36 : !llvm.ptr<array<1 x i64>> to !llvm.ptr<i64>
    %38 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64)>
    %39 = llvm.insertvalue %37, %38[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %40 = llvm.insertvalue %37, %39[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %41 = llvm.mlir.constant(0 : index) : i64
    %42 = llvm.insertvalue %41, %40[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %43 = llvm.mlir.addressof @constant_4 : !llvm.ptr<array<4 x i64>>
    %44 = llvm.bitcast %43 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %45 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %46 = llvm.insertvalue %44, %45[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %47 = llvm.insertvalue %44, %46[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %48 = llvm.mlir.constant(0 : index) : i64
    %49 = llvm.insertvalue %48, %47[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %50 = llvm.mlir.constant(4 : index) : i64
    %51 = llvm.insertvalue %50, %49[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %52 = llvm.mlir.constant(1 : index) : i64
    %53 = llvm.insertvalue %52, %51[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %54 = llvm.mlir.constant(1 : index) : i64
    %55 = llvm.mlir.constant(1 : index) : i64
    %56 = llvm.mlir.constant(1 : index) : i64
    %57 = llvm.mlir.constant(2 : index) : i64
    %58 = llvm.mlir.constant(1 : index) : i64
    %59 = llvm.mlir.constant(2 : index) : i64
    %60 = llvm.mlir.constant(2 : index) : i64
    %61 = llvm.mlir.constant(2 : index) : i64
    %62 = llvm.mlir.null : !llvm.ptr<i32>
    %63 = llvm.getelementptr %62[%61] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %64 = llvm.ptrtoint %63 : !llvm.ptr<i32> to i64
    %65 = llvm.mlir.constant(16 : index) : i64
    %66 = llvm.add %64, %65  : i64
    %67 = llvm.call @malloc(%66) : (i64) -> !llvm.ptr<i8>
    %68 = llvm.bitcast %67 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %69 = llvm.ptrtoint %68 : !llvm.ptr<i32> to i64
    %70 = llvm.mlir.constant(1 : index) : i64
    %71 = llvm.sub %65, %70  : i64
    %72 = llvm.add %69, %71  : i64
    %73 = llvm.urem %72, %65  : i64
    %74 = llvm.sub %72, %73  : i64
    %75 = llvm.inttoptr %74 : i64 to !llvm.ptr<i32>
    %76 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %77 = llvm.insertvalue %68, %76[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %78 = llvm.insertvalue %75, %77[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %79 = llvm.mlir.constant(0 : index) : i64
    %80 = llvm.insertvalue %79, %78[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %81 = llvm.insertvalue %54, %80[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %82 = llvm.insertvalue %55, %81[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %83 = llvm.insertvalue %56, %82[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %84 = llvm.insertvalue %57, %83[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %85 = llvm.insertvalue %60, %84[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %86 = llvm.insertvalue %59, %85[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %87 = llvm.insertvalue %57, %86[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %88 = llvm.insertvalue %58, %87[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %89 = llvm.mlir.constant(0 : index) : i64
    %90 = llvm.mlir.constant(1 : index) : i64
    %91 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%89 : i64)
  ^bb1(%92: i64):  // 2 preds: ^bb0, ^bb11
    %93 = llvm.icmp "slt" %92, %90 : i64
    llvm.cond_br %93, ^bb2, ^bb12
  ^bb2:  // pred: ^bb1
    %94 = llvm.mlir.constant(0 : index) : i64
    %95 = llvm.mlir.constant(1 : index) : i64
    %96 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%94 : i64)
  ^bb3(%97: i64):  // 2 preds: ^bb2, ^bb10
    %98 = llvm.icmp "slt" %97, %95 : i64
    llvm.cond_br %98, ^bb4, ^bb11
  ^bb4:  // pred: ^bb3
    %99 = llvm.mlir.constant(0 : index) : i64
    %100 = llvm.mlir.constant(1 : index) : i64
    %101 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%99 : i64)
  ^bb5(%102: i64):  // 2 preds: ^bb4, ^bb9
    %103 = llvm.icmp "slt" %102, %100 : i64
    llvm.cond_br %103, ^bb6, ^bb10
  ^bb6:  // pred: ^bb5
    %104 = llvm.mlir.constant(0 : index) : i64
    %105 = llvm.mlir.constant(2 : index) : i64
    %106 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%104 : i64)
  ^bb7(%107: i64):  // 2 preds: ^bb6, ^bb8
    %108 = llvm.icmp "slt" %107, %105 : i64
    llvm.cond_br %108, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %109 = llvm.extractvalue %21[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %110 = llvm.mlir.constant(2 : index) : i64
    %111 = llvm.mul %97, %110  : i64
    %112 = llvm.mlir.constant(2 : index) : i64
    %113 = llvm.mul %102, %112  : i64
    %114 = llvm.add %111, %113  : i64
    %115 = llvm.add %114, %107  : i64
    %116 = llvm.getelementptr %109[%115] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %117 = llvm.load %116 : !llvm.ptr<i32>
    %118 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %119 = llvm.mlir.constant(2 : index) : i64
    %120 = llvm.mul %92, %119  : i64
    %121 = llvm.mlir.constant(2 : index) : i64
    %122 = llvm.mul %97, %121  : i64
    %123 = llvm.add %120, %122  : i64
    %124 = llvm.mlir.constant(2 : index) : i64
    %125 = llvm.mul %102, %124  : i64
    %126 = llvm.add %123, %125  : i64
    %127 = llvm.add %126, %107  : i64
    %128 = llvm.getelementptr %118[%127] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %129 = llvm.load %128 : !llvm.ptr<i32>
    %130 = llvm.mul %117, %129  : i32
    %131 = llvm.extractvalue %88[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %132 = llvm.mlir.constant(2 : index) : i64
    %133 = llvm.mul %92, %132  : i64
    %134 = llvm.mlir.constant(2 : index) : i64
    %135 = llvm.mul %97, %134  : i64
    %136 = llvm.add %133, %135  : i64
    %137 = llvm.mlir.constant(2 : index) : i64
    %138 = llvm.mul %102, %137  : i64
    %139 = llvm.add %136, %138  : i64
    %140 = llvm.add %139, %107  : i64
    %141 = llvm.getelementptr %131[%140] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %130, %141 : !llvm.ptr<i32>
    %142 = llvm.add %107, %106  : i64
    llvm.br ^bb7(%142 : i64)
  ^bb9:  // pred: ^bb7
    %143 = llvm.add %102, %101  : i64
    llvm.br ^bb5(%143 : i64)
  ^bb10:  // pred: ^bb5
    %144 = llvm.add %97, %96  : i64
    llvm.br ^bb3(%144 : i64)
  ^bb11:  // pred: ^bb3
    %145 = llvm.add %92, %91  : i64
    llvm.br ^bb1(%145 : i64)
  ^bb12:  // pred: ^bb1
    %146 = llvm.mlir.constant(4 : index) : i64
    %147 = llvm.mlir.constant(1 : index) : i64
    %148 = llvm.mlir.null : !llvm.ptr<i64>
    %149 = llvm.getelementptr %148[%146] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %150 = llvm.ptrtoint %149 : !llvm.ptr<i64> to i64
    %151 = llvm.mlir.constant(16 : index) : i64
    %152 = llvm.add %150, %151  : i64
    %153 = llvm.call @malloc(%152) : (i64) -> !llvm.ptr<i8>
    %154 = llvm.bitcast %153 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %155 = llvm.ptrtoint %154 : !llvm.ptr<i64> to i64
    %156 = llvm.mlir.constant(1 : index) : i64
    %157 = llvm.sub %151, %156  : i64
    %158 = llvm.add %155, %157  : i64
    %159 = llvm.urem %158, %151  : i64
    %160 = llvm.sub %158, %159  : i64
    %161 = llvm.inttoptr %160 : i64 to !llvm.ptr<i64>
    %162 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %163 = llvm.insertvalue %154, %162[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %164 = llvm.insertvalue %161, %163[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %165 = llvm.mlir.constant(0 : index) : i64
    %166 = llvm.insertvalue %165, %164[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %167 = llvm.insertvalue %146, %166[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %168 = llvm.insertvalue %147, %167[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %169 = llvm.mlir.constant(0 : index) : i64
    %170 = llvm.mlir.constant(4 : index) : i64
    %171 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%169 : i64)
  ^bb13(%172: i64):  // 2 preds: ^bb12, ^bb14
    %173 = llvm.icmp "slt" %172, %170 : i64
    llvm.cond_br %173, ^bb14, ^bb15
  ^bb14:  // pred: ^bb13
    %174 = llvm.extractvalue %168[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %175 = llvm.getelementptr %174[%172] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %23, %175 : !llvm.ptr<i64>
    %176 = llvm.add %172, %171  : i64
    llvm.br ^bb13(%176 : i64)
  ^bb15:  // pred: ^bb13
    %177 = llvm.mlir.constant(4 : index) : i64
    %178 = llvm.mlir.constant(1 : index) : i64
    %179 = llvm.mlir.null : !llvm.ptr<i64>
    %180 = llvm.getelementptr %179[%177] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %181 = llvm.ptrtoint %180 : !llvm.ptr<i64> to i64
    %182 = llvm.mlir.constant(16 : index) : i64
    %183 = llvm.add %181, %182  : i64
    %184 = llvm.call @malloc(%183) : (i64) -> !llvm.ptr<i8>
    %185 = llvm.bitcast %184 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %186 = llvm.ptrtoint %185 : !llvm.ptr<i64> to i64
    %187 = llvm.mlir.constant(1 : index) : i64
    %188 = llvm.sub %182, %187  : i64
    %189 = llvm.add %186, %188  : i64
    %190 = llvm.urem %189, %182  : i64
    %191 = llvm.sub %189, %190  : i64
    %192 = llvm.inttoptr %191 : i64 to !llvm.ptr<i64>
    %193 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %194 = llvm.insertvalue %185, %193[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %195 = llvm.insertvalue %192, %194[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %196 = llvm.mlir.constant(0 : index) : i64
    %197 = llvm.insertvalue %196, %195[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %198 = llvm.insertvalue %177, %197[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %199 = llvm.insertvalue %178, %198[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %200 = llvm.mlir.constant(0 : index) : i64
    %201 = llvm.mlir.constant(4 : index) : i64
    %202 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb16(%200 : i64)
  ^bb16(%203: i64):  // 2 preds: ^bb15, ^bb17
    %204 = llvm.icmp "slt" %203, %201 : i64
    llvm.cond_br %204, ^bb17, ^bb18
  ^bb17:  // pred: ^bb16
    %205 = llvm.extractvalue %168[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %206 = llvm.getelementptr %205[%203] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %207 = llvm.load %206 : !llvm.ptr<i64>
    %208 = llvm.extractvalue %42[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %209 = llvm.load %208 : !llvm.ptr<i64>
    %210 = llvm.mul %207, %209  : i64
    %211 = llvm.extractvalue %199[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %212 = llvm.getelementptr %211[%203] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %210, %212 : !llvm.ptr<i64>
    %213 = llvm.add %203, %202  : i64
    llvm.br ^bb16(%213 : i64)
  ^bb18:  // pred: ^bb16
    %214 = llvm.mlir.constant(4 : index) : i64
    %215 = llvm.mlir.constant(1 : index) : i64
    %216 = llvm.mlir.null : !llvm.ptr<i1>
    %217 = llvm.getelementptr %216[%214] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %218 = llvm.ptrtoint %217 : !llvm.ptr<i1> to i64
    %219 = llvm.mlir.constant(16 : index) : i64
    %220 = llvm.add %218, %219  : i64
    %221 = llvm.call @malloc(%220) : (i64) -> !llvm.ptr<i8>
    %222 = llvm.bitcast %221 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %223 = llvm.ptrtoint %222 : !llvm.ptr<i1> to i64
    %224 = llvm.mlir.constant(1 : index) : i64
    %225 = llvm.sub %219, %224  : i64
    %226 = llvm.add %223, %225  : i64
    %227 = llvm.urem %226, %219  : i64
    %228 = llvm.sub %226, %227  : i64
    %229 = llvm.inttoptr %228 : i64 to !llvm.ptr<i1>
    %230 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %231 = llvm.insertvalue %222, %230[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %232 = llvm.insertvalue %229, %231[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %233 = llvm.mlir.constant(0 : index) : i64
    %234 = llvm.insertvalue %233, %232[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %235 = llvm.insertvalue %214, %234[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %236 = llvm.insertvalue %215, %235[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %237 = llvm.mlir.constant(0 : index) : i64
    %238 = llvm.mlir.constant(4 : index) : i64
    %239 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%237 : i64)
  ^bb19(%240: i64):  // 2 preds: ^bb18, ^bb20
    %241 = llvm.icmp "slt" %240, %238 : i64
    llvm.cond_br %241, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %242 = llvm.extractvalue %35[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %243 = llvm.getelementptr %242[%240] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %244 = llvm.load %243 : !llvm.ptr<i64>
    %245 = llvm.extractvalue %199[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %246 = llvm.getelementptr %245[%240] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %247 = llvm.load %246 : !llvm.ptr<i64>
    %248 = llvm.icmp "eq" %244, %247 : i64
    %249 = llvm.extractvalue %236[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %250 = llvm.getelementptr %249[%240] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %248, %250 : !llvm.ptr<i1>
    %251 = llvm.add %240, %239  : i64
    llvm.br ^bb19(%251 : i64)
  ^bb21:  // pred: ^bb19
    %252 = llvm.mlir.constant(4 : index) : i64
    %253 = llvm.mlir.constant(1 : index) : i64
    %254 = llvm.mlir.null : !llvm.ptr<i64>
    %255 = llvm.getelementptr %254[%252] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %256 = llvm.ptrtoint %255 : !llvm.ptr<i64> to i64
    %257 = llvm.mlir.constant(16 : index) : i64
    %258 = llvm.add %256, %257  : i64
    %259 = llvm.call @malloc(%258) : (i64) -> !llvm.ptr<i8>
    %260 = llvm.bitcast %259 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %261 = llvm.ptrtoint %260 : !llvm.ptr<i64> to i64
    %262 = llvm.mlir.constant(1 : index) : i64
    %263 = llvm.sub %257, %262  : i64
    %264 = llvm.add %261, %263  : i64
    %265 = llvm.urem %264, %257  : i64
    %266 = llvm.sub %264, %265  : i64
    %267 = llvm.inttoptr %266 : i64 to !llvm.ptr<i64>
    %268 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %269 = llvm.insertvalue %260, %268[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %270 = llvm.insertvalue %267, %269[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %271 = llvm.mlir.constant(0 : index) : i64
    %272 = llvm.insertvalue %271, %270[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %273 = llvm.insertvalue %252, %272[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %274 = llvm.insertvalue %253, %273[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %275 = llvm.mlir.constant(0 : index) : i64
    %276 = llvm.mlir.constant(4 : index) : i64
    %277 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb22(%275 : i64)
  ^bb22(%278: i64):  // 2 preds: ^bb21, ^bb23
    %279 = llvm.icmp "slt" %278, %276 : i64
    llvm.cond_br %279, ^bb23, ^bb24
  ^bb23:  // pred: ^bb22
    %280 = llvm.extractvalue %236[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %281 = llvm.getelementptr %280[%278] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %282 = llvm.load %281 : !llvm.ptr<i1>
    %283 = llvm.extractvalue %168[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %284 = llvm.getelementptr %283[%278] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %285 = llvm.load %284 : !llvm.ptr<i64>
    %286 = llvm.extractvalue %53[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %287 = llvm.getelementptr %286[%278] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %288 = llvm.load %287 : !llvm.ptr<i64>
    %289 = llvm.select %282, %285, %288 : i1, i64
    %290 = llvm.extractvalue %274[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %291 = llvm.getelementptr %290[%278] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %289, %291 : !llvm.ptr<i64>
    %292 = llvm.add %278, %277  : i64
    llvm.br ^bb22(%292 : i64)
  ^bb24:  // pred: ^bb22
    %293 = llvm.mlir.constant(1 : index) : i64
    %294 = llvm.mlir.constant(1 : index) : i64
    %295 = llvm.mlir.constant(1 : index) : i64
    %296 = llvm.mlir.constant(2 : index) : i64
    %297 = llvm.mlir.constant(1 : index) : i64
    %298 = llvm.mlir.constant(2 : index) : i64
    %299 = llvm.mlir.constant(2 : index) : i64
    %300 = llvm.mlir.constant(2 : index) : i64
    %301 = llvm.mlir.null : !llvm.ptr<i32>
    %302 = llvm.getelementptr %301[%300] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %303 = llvm.ptrtoint %302 : !llvm.ptr<i32> to i64
    %304 = llvm.mlir.constant(16 : index) : i64
    %305 = llvm.add %303, %304  : i64
    %306 = llvm.call @malloc(%305) : (i64) -> !llvm.ptr<i8>
    %307 = llvm.bitcast %306 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %308 = llvm.ptrtoint %307 : !llvm.ptr<i32> to i64
    %309 = llvm.mlir.constant(1 : index) : i64
    %310 = llvm.sub %304, %309  : i64
    %311 = llvm.add %308, %310  : i64
    %312 = llvm.urem %311, %304  : i64
    %313 = llvm.sub %311, %312  : i64
    %314 = llvm.inttoptr %313 : i64 to !llvm.ptr<i32>
    %315 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %316 = llvm.insertvalue %307, %315[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %317 = llvm.insertvalue %314, %316[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %318 = llvm.mlir.constant(0 : index) : i64
    %319 = llvm.insertvalue %318, %317[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %320 = llvm.insertvalue %293, %319[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %321 = llvm.insertvalue %294, %320[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %322 = llvm.insertvalue %295, %321[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %323 = llvm.insertvalue %296, %322[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %324 = llvm.insertvalue %299, %323[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %325 = llvm.insertvalue %298, %324[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %326 = llvm.insertvalue %296, %325[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %327 = llvm.insertvalue %297, %326[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %328 = llvm.mlir.constant(0 : index) : i64
    %329 = llvm.mlir.constant(1 : index) : i64
    %330 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb25(%328 : i64)
  ^bb25(%331: i64):  // 2 preds: ^bb24, ^bb35
    %332 = llvm.icmp "slt" %331, %329 : i64
    llvm.cond_br %332, ^bb26, ^bb36
  ^bb26:  // pred: ^bb25
    %333 = llvm.mlir.constant(0 : index) : i64
    %334 = llvm.mlir.constant(1 : index) : i64
    %335 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb27(%333 : i64)
  ^bb27(%336: i64):  // 2 preds: ^bb26, ^bb34
    %337 = llvm.icmp "slt" %336, %334 : i64
    llvm.cond_br %337, ^bb28, ^bb35
  ^bb28:  // pred: ^bb27
    %338 = llvm.mlir.constant(0 : index) : i64
    %339 = llvm.mlir.constant(1 : index) : i64
    %340 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb29(%338 : i64)
  ^bb29(%341: i64):  // 2 preds: ^bb28, ^bb33
    %342 = llvm.icmp "slt" %341, %339 : i64
    llvm.cond_br %342, ^bb30, ^bb34
  ^bb30:  // pred: ^bb29
    %343 = llvm.mlir.constant(0 : index) : i64
    %344 = llvm.mlir.constant(2 : index) : i64
    %345 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb31(%343 : i64)
  ^bb31(%346: i64):  // 2 preds: ^bb30, ^bb32
    %347 = llvm.icmp "slt" %346, %344 : i64
    llvm.cond_br %347, ^bb32, ^bb33
  ^bb32:  // pred: ^bb31
    %348 = llvm.extractvalue %88[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %349 = llvm.mlir.constant(2 : index) : i64
    %350 = llvm.mul %24, %349  : i64
    %351 = llvm.mlir.constant(2 : index) : i64
    %352 = llvm.mul %24, %351  : i64
    %353 = llvm.add %350, %352  : i64
    %354 = llvm.mlir.constant(2 : index) : i64
    %355 = llvm.mul %24, %354  : i64
    %356 = llvm.add %353, %355  : i64
    %357 = llvm.add %356, %346  : i64
    %358 = llvm.getelementptr %348[%357] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %359 = llvm.load %358 : !llvm.ptr<i32>
    %360 = llvm.extractvalue %327[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %361 = llvm.mlir.constant(2 : index) : i64
    %362 = llvm.mul %331, %361  : i64
    %363 = llvm.mlir.constant(2 : index) : i64
    %364 = llvm.mul %336, %363  : i64
    %365 = llvm.add %362, %364  : i64
    %366 = llvm.mlir.constant(2 : index) : i64
    %367 = llvm.mul %341, %366  : i64
    %368 = llvm.add %365, %367  : i64
    %369 = llvm.add %368, %346  : i64
    %370 = llvm.getelementptr %360[%369] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %359, %370 : !llvm.ptr<i32>
    %371 = llvm.add %346, %345  : i64
    llvm.br ^bb31(%371 : i64)
  ^bb33:  // pred: ^bb31
    %372 = llvm.add %341, %340  : i64
    llvm.br ^bb29(%372 : i64)
  ^bb34:  // pred: ^bb29
    %373 = llvm.add %336, %335  : i64
    llvm.br ^bb27(%373 : i64)
  ^bb35:  // pred: ^bb27
    %374 = llvm.add %331, %330  : i64
    llvm.br ^bb25(%374 : i64)
  ^bb36:  // pred: ^bb25
    %375 = llvm.mlir.constant(1 : index) : i64
    %376 = llvm.mlir.constant(1 : index) : i64
    %377 = llvm.mlir.constant(1 : index) : i64
    %378 = llvm.mlir.constant(2 : index) : i64
    %379 = llvm.mlir.constant(1 : index) : i64
    %380 = llvm.mlir.constant(2 : index) : i64
    %381 = llvm.mlir.constant(2 : index) : i64
    %382 = llvm.mlir.constant(2 : index) : i64
    %383 = llvm.mlir.null : !llvm.ptr<i32>
    %384 = llvm.getelementptr %383[%382] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %385 = llvm.ptrtoint %384 : !llvm.ptr<i32> to i64
    %386 = llvm.mlir.constant(16 : index) : i64
    %387 = llvm.add %385, %386  : i64
    %388 = llvm.call @malloc(%387) : (i64) -> !llvm.ptr<i8>
    %389 = llvm.bitcast %388 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %390 = llvm.ptrtoint %389 : !llvm.ptr<i32> to i64
    %391 = llvm.mlir.constant(1 : index) : i64
    %392 = llvm.sub %386, %391  : i64
    %393 = llvm.add %390, %392  : i64
    %394 = llvm.urem %393, %386  : i64
    %395 = llvm.sub %393, %394  : i64
    %396 = llvm.inttoptr %395 : i64 to !llvm.ptr<i32>
    %397 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %398 = llvm.insertvalue %389, %397[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %399 = llvm.insertvalue %396, %398[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %400 = llvm.mlir.constant(0 : index) : i64
    %401 = llvm.insertvalue %400, %399[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %402 = llvm.insertvalue %375, %401[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %403 = llvm.insertvalue %376, %402[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %404 = llvm.insertvalue %377, %403[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %405 = llvm.insertvalue %378, %404[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %406 = llvm.insertvalue %381, %405[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %407 = llvm.insertvalue %380, %406[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %408 = llvm.insertvalue %378, %407[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %409 = llvm.insertvalue %379, %408[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %410 = llvm.mlir.constant(0 : index) : i64
    %411 = llvm.mlir.constant(1 : index) : i64
    %412 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb37(%410 : i64)
  ^bb37(%413: i64):  // 2 preds: ^bb36, ^bb47
    %414 = llvm.icmp "slt" %413, %411 : i64
    llvm.cond_br %414, ^bb38, ^bb48
  ^bb38:  // pred: ^bb37
    %415 = llvm.mlir.constant(0 : index) : i64
    %416 = llvm.mlir.constant(1 : index) : i64
    %417 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb39(%415 : i64)
  ^bb39(%418: i64):  // 2 preds: ^bb38, ^bb46
    %419 = llvm.icmp "slt" %418, %416 : i64
    llvm.cond_br %419, ^bb40, ^bb47
  ^bb40:  // pred: ^bb39
    %420 = llvm.mlir.constant(0 : index) : i64
    %421 = llvm.mlir.constant(1 : index) : i64
    %422 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb41(%420 : i64)
  ^bb41(%423: i64):  // 2 preds: ^bb40, ^bb45
    %424 = llvm.icmp "slt" %423, %421 : i64
    llvm.cond_br %424, ^bb42, ^bb46
  ^bb42:  // pred: ^bb41
    %425 = llvm.mlir.constant(0 : index) : i64
    %426 = llvm.mlir.constant(2 : index) : i64
    %427 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb43(%425 : i64)
  ^bb43(%428: i64):  // 2 preds: ^bb42, ^bb44
    %429 = llvm.icmp "slt" %428, %426 : i64
    llvm.cond_br %429, ^bb44, ^bb45
  ^bb44:  // pred: ^bb43
    %430 = llvm.extractvalue %88[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %431 = llvm.mlir.constant(2 : index) : i64
    %432 = llvm.mul %413, %431  : i64
    %433 = llvm.mlir.constant(2 : index) : i64
    %434 = llvm.mul %418, %433  : i64
    %435 = llvm.add %432, %434  : i64
    %436 = llvm.mlir.constant(2 : index) : i64
    %437 = llvm.mul %423, %436  : i64
    %438 = llvm.add %435, %437  : i64
    %439 = llvm.add %438, %428  : i64
    %440 = llvm.getelementptr %430[%439] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %441 = llvm.load %440 : !llvm.ptr<i32>
    %442 = llvm.mlir.constant(false) : i1
    %443 = "llvm.intr.abs"(%441, %442) : (i32, i1) -> i32
    %444 = llvm.extractvalue %409[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %445 = llvm.mlir.constant(2 : index) : i64
    %446 = llvm.mul %413, %445  : i64
    %447 = llvm.mlir.constant(2 : index) : i64
    %448 = llvm.mul %418, %447  : i64
    %449 = llvm.add %446, %448  : i64
    %450 = llvm.mlir.constant(2 : index) : i64
    %451 = llvm.mul %423, %450  : i64
    %452 = llvm.add %449, %451  : i64
    %453 = llvm.add %452, %428  : i64
    %454 = llvm.getelementptr %444[%453] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %443, %454 : !llvm.ptr<i32>
    %455 = llvm.add %428, %427  : i64
    llvm.br ^bb43(%455 : i64)
  ^bb45:  // pred: ^bb43
    %456 = llvm.add %423, %422  : i64
    llvm.br ^bb41(%456 : i64)
  ^bb46:  // pred: ^bb41
    %457 = llvm.add %418, %417  : i64
    llvm.br ^bb39(%457 : i64)
  ^bb47:  // pred: ^bb39
    %458 = llvm.add %413, %412  : i64
    llvm.br ^bb37(%458 : i64)
  ^bb48:  // pred: ^bb37
    %459 = llvm.mlir.constant(1 : index) : i64
    %460 = llvm.mlir.constant(1 : index) : i64
    %461 = llvm.mlir.constant(1 : index) : i64
    %462 = llvm.mlir.constant(2 : index) : i64
    %463 = llvm.mlir.constant(1 : index) : i64
    %464 = llvm.mlir.constant(2 : index) : i64
    %465 = llvm.mlir.constant(2 : index) : i64
    %466 = llvm.mlir.constant(2 : index) : i64
    %467 = llvm.mlir.null : !llvm.ptr<i64>
    %468 = llvm.getelementptr %467[%466] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %469 = llvm.ptrtoint %468 : !llvm.ptr<i64> to i64
    %470 = llvm.mlir.constant(16 : index) : i64
    %471 = llvm.add %469, %470  : i64
    %472 = llvm.call @malloc(%471) : (i64) -> !llvm.ptr<i8>
    %473 = llvm.bitcast %472 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %474 = llvm.ptrtoint %473 : !llvm.ptr<i64> to i64
    %475 = llvm.mlir.constant(1 : index) : i64
    %476 = llvm.sub %470, %475  : i64
    %477 = llvm.add %474, %476  : i64
    %478 = llvm.urem %477, %470  : i64
    %479 = llvm.sub %477, %478  : i64
    %480 = llvm.inttoptr %479 : i64 to !llvm.ptr<i64>
    %481 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>
    %482 = llvm.insertvalue %473, %481[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %483 = llvm.insertvalue %480, %482[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %484 = llvm.mlir.constant(0 : index) : i64
    %485 = llvm.insertvalue %484, %483[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %486 = llvm.insertvalue %459, %485[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %487 = llvm.insertvalue %460, %486[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %488 = llvm.insertvalue %461, %487[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %489 = llvm.insertvalue %462, %488[3, 3] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %490 = llvm.insertvalue %465, %489[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %491 = llvm.insertvalue %464, %490[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %492 = llvm.insertvalue %462, %491[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %493 = llvm.insertvalue %463, %492[4, 3] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %494 = llvm.mlir.constant(0 : index) : i64
    %495 = llvm.mlir.constant(1 : index) : i64
    %496 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb49(%494 : i64)
  ^bb49(%497: i64):  // 2 preds: ^bb48, ^bb59
    %498 = llvm.icmp "slt" %497, %495 : i64
    llvm.cond_br %498, ^bb50, ^bb60
  ^bb50:  // pred: ^bb49
    %499 = llvm.mlir.constant(0 : index) : i64
    %500 = llvm.mlir.constant(1 : index) : i64
    %501 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb51(%499 : i64)
  ^bb51(%502: i64):  // 2 preds: ^bb50, ^bb58
    %503 = llvm.icmp "slt" %502, %500 : i64
    llvm.cond_br %503, ^bb52, ^bb59
  ^bb52:  // pred: ^bb51
    %504 = llvm.mlir.constant(0 : index) : i64
    %505 = llvm.mlir.constant(1 : index) : i64
    %506 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb53(%504 : i64)
  ^bb53(%507: i64):  // 2 preds: ^bb52, ^bb57
    %508 = llvm.icmp "slt" %507, %505 : i64
    llvm.cond_br %508, ^bb54, ^bb58
  ^bb54:  // pred: ^bb53
    %509 = llvm.mlir.constant(0 : index) : i64
    %510 = llvm.mlir.constant(2 : index) : i64
    %511 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb55(%509 : i64)
  ^bb55(%512: i64):  // 2 preds: ^bb54, ^bb56
    %513 = llvm.icmp "slt" %512, %510 : i64
    llvm.cond_br %513, ^bb56, ^bb57
  ^bb56:  // pred: ^bb55
    %514 = llvm.extractvalue %409[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %515 = llvm.mlir.constant(2 : index) : i64
    %516 = llvm.mul %497, %515  : i64
    %517 = llvm.mlir.constant(2 : index) : i64
    %518 = llvm.mul %502, %517  : i64
    %519 = llvm.add %516, %518  : i64
    %520 = llvm.mlir.constant(2 : index) : i64
    %521 = llvm.mul %507, %520  : i64
    %522 = llvm.add %519, %521  : i64
    %523 = llvm.add %522, %512  : i64
    %524 = llvm.getelementptr %514[%523] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %525 = llvm.load %524 : !llvm.ptr<i32>
    %526 = llvm.sext %525 : i32 to i64
    %527 = llvm.extractvalue %493[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %528 = llvm.mlir.constant(2 : index) : i64
    %529 = llvm.mul %497, %528  : i64
    %530 = llvm.mlir.constant(2 : index) : i64
    %531 = llvm.mul %502, %530  : i64
    %532 = llvm.add %529, %531  : i64
    %533 = llvm.mlir.constant(2 : index) : i64
    %534 = llvm.mul %507, %533  : i64
    %535 = llvm.add %532, %534  : i64
    %536 = llvm.add %535, %512  : i64
    %537 = llvm.getelementptr %527[%536] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %526, %537 : !llvm.ptr<i64>
    %538 = llvm.add %512, %511  : i64
    llvm.br ^bb55(%538 : i64)
  ^bb57:  // pred: ^bb55
    %539 = llvm.add %507, %506  : i64
    llvm.br ^bb53(%539 : i64)
  ^bb58:  // pred: ^bb53
    %540 = llvm.add %502, %501  : i64
    llvm.br ^bb51(%540 : i64)
  ^bb59:  // pred: ^bb51
    %541 = llvm.add %497, %496  : i64
    llvm.br ^bb49(%541 : i64)
  ^bb60:  // pred: ^bb49
    %542 = llvm.mlir.constant(1 : index) : i64
    %543 = llvm.mlir.constant(1 : index) : i64
    %544 = llvm.mlir.constant(2 : index) : i64
    %545 = llvm.mlir.constant(1 : index) : i64
    %546 = llvm.mlir.constant(2 : index) : i64
    %547 = llvm.mlir.constant(2 : index) : i64
    %548 = llvm.mlir.null : !llvm.ptr<i64>
    %549 = llvm.getelementptr %548[%547] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %550 = llvm.ptrtoint %549 : !llvm.ptr<i64> to i64
    %551 = llvm.mlir.constant(16 : index) : i64
    %552 = llvm.add %550, %551  : i64
    %553 = llvm.call @malloc(%552) : (i64) -> !llvm.ptr<i8>
    %554 = llvm.bitcast %553 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %555 = llvm.ptrtoint %554 : !llvm.ptr<i64> to i64
    %556 = llvm.mlir.constant(1 : index) : i64
    %557 = llvm.sub %551, %556  : i64
    %558 = llvm.add %555, %557  : i64
    %559 = llvm.urem %558, %551  : i64
    %560 = llvm.sub %558, %559  : i64
    %561 = llvm.inttoptr %560 : i64 to !llvm.ptr<i64>
    %562 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>
    %563 = llvm.insertvalue %554, %562[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %564 = llvm.insertvalue %561, %563[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %565 = llvm.mlir.constant(0 : index) : i64
    %566 = llvm.insertvalue %565, %564[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %567 = llvm.insertvalue %542, %566[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %568 = llvm.insertvalue %543, %567[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %569 = llvm.insertvalue %544, %568[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %570 = llvm.insertvalue %546, %569[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %571 = llvm.insertvalue %544, %570[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %572 = llvm.insertvalue %545, %571[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %573 = llvm.mlir.constant(0 : index) : i64
    %574 = llvm.mlir.constant(1 : index) : i64
    %575 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb61(%573 : i64)
  ^bb61(%576: i64):  // 2 preds: ^bb60, ^bb68
    %577 = llvm.icmp "slt" %576, %574 : i64
    llvm.cond_br %577, ^bb62, ^bb69
  ^bb62:  // pred: ^bb61
    %578 = llvm.mlir.constant(0 : index) : i64
    %579 = llvm.mlir.constant(1 : index) : i64
    %580 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb63(%578 : i64)
  ^bb63(%581: i64):  // 2 preds: ^bb62, ^bb67
    %582 = llvm.icmp "slt" %581, %579 : i64
    llvm.cond_br %582, ^bb64, ^bb68
  ^bb64:  // pred: ^bb63
    %583 = llvm.mlir.constant(0 : index) : i64
    %584 = llvm.mlir.constant(2 : index) : i64
    %585 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb65(%583 : i64)
  ^bb65(%586: i64):  // 2 preds: ^bb64, ^bb66
    %587 = llvm.icmp "slt" %586, %584 : i64
    llvm.cond_br %587, ^bb66, ^bb67
  ^bb66:  // pred: ^bb65
    %588 = llvm.extractvalue %572[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %589 = llvm.mlir.constant(2 : index) : i64
    %590 = llvm.mul %576, %589  : i64
    %591 = llvm.mlir.constant(2 : index) : i64
    %592 = llvm.mul %581, %591  : i64
    %593 = llvm.add %590, %592  : i64
    %594 = llvm.add %593, %586  : i64
    %595 = llvm.getelementptr %588[%594] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %22, %595 : !llvm.ptr<i64>
    %596 = llvm.add %586, %585  : i64
    llvm.br ^bb65(%596 : i64)
  ^bb67:  // pred: ^bb65
    %597 = llvm.add %581, %580  : i64
    llvm.br ^bb63(%597 : i64)
  ^bb68:  // pred: ^bb63
    %598 = llvm.add %576, %575  : i64
    llvm.br ^bb61(%598 : i64)
  ^bb69:  // pred: ^bb61
    %599 = llvm.mlir.constant(0 : index) : i64
    %600 = llvm.mlir.constant(1 : index) : i64
    %601 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb70(%599 : i64)
  ^bb70(%602: i64):  // 2 preds: ^bb69, ^bb80
    %603 = llvm.icmp "slt" %602, %600 : i64
    llvm.cond_br %603, ^bb71, ^bb81
  ^bb71:  // pred: ^bb70
    %604 = llvm.mlir.constant(0 : index) : i64
    %605 = llvm.mlir.constant(1 : index) : i64
    %606 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb72(%604 : i64)
  ^bb72(%607: i64):  // 2 preds: ^bb71, ^bb79
    %608 = llvm.icmp "slt" %607, %605 : i64
    llvm.cond_br %608, ^bb73, ^bb80
  ^bb73:  // pred: ^bb72
    %609 = llvm.mlir.constant(0 : index) : i64
    %610 = llvm.mlir.constant(1 : index) : i64
    %611 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb74(%609 : i64)
  ^bb74(%612: i64):  // 2 preds: ^bb73, ^bb78
    %613 = llvm.icmp "slt" %612, %610 : i64
    llvm.cond_br %613, ^bb75, ^bb79
  ^bb75:  // pred: ^bb74
    %614 = llvm.mlir.constant(0 : index) : i64
    %615 = llvm.mlir.constant(2 : index) : i64
    %616 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb76(%614 : i64)
  ^bb76(%617: i64):  // 2 preds: ^bb75, ^bb77
    %618 = llvm.icmp "slt" %617, %615 : i64
    llvm.cond_br %618, ^bb77, ^bb78
  ^bb77:  // pred: ^bb76
    %619 = llvm.extractvalue %493[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %620 = llvm.mlir.constant(2 : index) : i64
    %621 = llvm.mul %602, %620  : i64
    %622 = llvm.mlir.constant(2 : index) : i64
    %623 = llvm.mul %607, %622  : i64
    %624 = llvm.add %621, %623  : i64
    %625 = llvm.mlir.constant(2 : index) : i64
    %626 = llvm.mul %612, %625  : i64
    %627 = llvm.add %624, %626  : i64
    %628 = llvm.add %627, %617  : i64
    %629 = llvm.getelementptr %619[%628] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %630 = llvm.load %629 : !llvm.ptr<i64>
    %631 = llvm.extractvalue %572[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %632 = llvm.mlir.constant(2 : index) : i64
    %633 = llvm.mul %602, %632  : i64
    %634 = llvm.mlir.constant(2 : index) : i64
    %635 = llvm.mul %607, %634  : i64
    %636 = llvm.add %633, %635  : i64
    %637 = llvm.add %636, %617  : i64
    %638 = llvm.getelementptr %631[%637] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %639 = llvm.load %638 : !llvm.ptr<i64>
    %640 = llvm.add %639, %630  : i64
    %641 = llvm.extractvalue %572[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %642 = llvm.mlir.constant(2 : index) : i64
    %643 = llvm.mul %602, %642  : i64
    %644 = llvm.mlir.constant(2 : index) : i64
    %645 = llvm.mul %607, %644  : i64
    %646 = llvm.add %643, %645  : i64
    %647 = llvm.add %646, %617  : i64
    %648 = llvm.getelementptr %641[%647] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %640, %648 : !llvm.ptr<i64>
    %649 = llvm.add %617, %616  : i64
    llvm.br ^bb76(%649 : i64)
  ^bb78:  // pred: ^bb76
    %650 = llvm.add %612, %611  : i64
    llvm.br ^bb74(%650 : i64)
  ^bb79:  // pred: ^bb74
    %651 = llvm.add %607, %606  : i64
    llvm.br ^bb72(%651 : i64)
  ^bb80:  // pred: ^bb72
    %652 = llvm.add %602, %601  : i64
    llvm.br ^bb70(%652 : i64)
  ^bb81:  // pred: ^bb70
    %653 = llvm.mlir.constant(1 : index) : i64
    %654 = llvm.mlir.constant(1 : index) : i64
    %655 = llvm.mlir.constant(1 : index) : i64
    %656 = llvm.mlir.constant(2 : index) : i64
    %657 = llvm.mlir.constant(1 : index) : i64
    %658 = llvm.mlir.constant(2 : index) : i64
    %659 = llvm.mlir.constant(2 : index) : i64
    %660 = llvm.mlir.constant(2 : index) : i64
    %661 = llvm.mlir.null : !llvm.ptr<i1>
    %662 = llvm.getelementptr %661[%660] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %663 = llvm.ptrtoint %662 : !llvm.ptr<i1> to i64
    %664 = llvm.mlir.constant(16 : index) : i64
    %665 = llvm.add %663, %664  : i64
    %666 = llvm.call @malloc(%665) : (i64) -> !llvm.ptr<i8>
    %667 = llvm.bitcast %666 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %668 = llvm.ptrtoint %667 : !llvm.ptr<i1> to i64
    %669 = llvm.mlir.constant(1 : index) : i64
    %670 = llvm.sub %664, %669  : i64
    %671 = llvm.add %668, %670  : i64
    %672 = llvm.urem %671, %664  : i64
    %673 = llvm.sub %671, %672  : i64
    %674 = llvm.inttoptr %673 : i64 to !llvm.ptr<i1>
    %675 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>
    %676 = llvm.insertvalue %667, %675[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %677 = llvm.insertvalue %674, %676[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %678 = llvm.mlir.constant(0 : index) : i64
    %679 = llvm.insertvalue %678, %677[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %680 = llvm.insertvalue %653, %679[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %681 = llvm.insertvalue %654, %680[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %682 = llvm.insertvalue %655, %681[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %683 = llvm.insertvalue %656, %682[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %684 = llvm.insertvalue %659, %683[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %685 = llvm.insertvalue %658, %684[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %686 = llvm.insertvalue %656, %685[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %687 = llvm.insertvalue %657, %686[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %688 = llvm.mlir.constant(0 : index) : i64
    %689 = llvm.mlir.constant(1 : index) : i64
    %690 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb82(%688 : i64)
  ^bb82(%691: i64):  // 2 preds: ^bb81, ^bb92
    %692 = llvm.icmp "slt" %691, %689 : i64
    llvm.cond_br %692, ^bb83, ^bb93
  ^bb83:  // pred: ^bb82
    %693 = llvm.mlir.constant(0 : index) : i64
    %694 = llvm.mlir.constant(1 : index) : i64
    %695 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb84(%693 : i64)
  ^bb84(%696: i64):  // 2 preds: ^bb83, ^bb91
    %697 = llvm.icmp "slt" %696, %694 : i64
    llvm.cond_br %697, ^bb85, ^bb92
  ^bb85:  // pred: ^bb84
    %698 = llvm.mlir.constant(0 : index) : i64
    %699 = llvm.mlir.constant(1 : index) : i64
    %700 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb86(%698 : i64)
  ^bb86(%701: i64):  // 2 preds: ^bb85, ^bb90
    %702 = llvm.icmp "slt" %701, %699 : i64
    llvm.cond_br %702, ^bb87, ^bb91
  ^bb87:  // pred: ^bb86
    %703 = llvm.mlir.constant(0 : index) : i64
    %704 = llvm.mlir.constant(2 : index) : i64
    %705 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb88(%703 : i64)
  ^bb88(%706: i64):  // 2 preds: ^bb87, ^bb89
    %707 = llvm.icmp "slt" %706, %704 : i64
    llvm.cond_br %707, ^bb89, ^bb90
  ^bb89:  // pred: ^bb88
    %708 = llvm.extractvalue %409[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %709 = llvm.mlir.constant(2 : index) : i64
    %710 = llvm.mul %691, %709  : i64
    %711 = llvm.mlir.constant(2 : index) : i64
    %712 = llvm.mul %696, %711  : i64
    %713 = llvm.add %710, %712  : i64
    %714 = llvm.mlir.constant(2 : index) : i64
    %715 = llvm.mul %701, %714  : i64
    %716 = llvm.add %713, %715  : i64
    %717 = llvm.add %716, %706  : i64
    %718 = llvm.getelementptr %708[%717] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %719 = llvm.load %718 : !llvm.ptr<i32>
    %720 = llvm.extractvalue %409[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %721 = llvm.mlir.constant(2 : index) : i64
    %722 = llvm.mul %691, %721  : i64
    %723 = llvm.mlir.constant(2 : index) : i64
    %724 = llvm.mul %696, %723  : i64
    %725 = llvm.add %722, %724  : i64
    %726 = llvm.mlir.constant(2 : index) : i64
    %727 = llvm.mul %701, %726  : i64
    %728 = llvm.add %725, %727  : i64
    %729 = llvm.add %728, %706  : i64
    %730 = llvm.getelementptr %720[%729] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %731 = llvm.load %730 : !llvm.ptr<i32>
    %732 = llvm.icmp "eq" %719, %731 : i32
    %733 = llvm.extractvalue %687[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %734 = llvm.mlir.constant(2 : index) : i64
    %735 = llvm.mul %691, %734  : i64
    %736 = llvm.mlir.constant(2 : index) : i64
    %737 = llvm.mul %696, %736  : i64
    %738 = llvm.add %735, %737  : i64
    %739 = llvm.mlir.constant(2 : index) : i64
    %740 = llvm.mul %701, %739  : i64
    %741 = llvm.add %738, %740  : i64
    %742 = llvm.add %741, %706  : i64
    %743 = llvm.getelementptr %733[%742] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %732, %743 : !llvm.ptr<i1>
    %744 = llvm.add %706, %705  : i64
    llvm.br ^bb88(%744 : i64)
  ^bb90:  // pred: ^bb88
    %745 = llvm.add %701, %700  : i64
    llvm.br ^bb86(%745 : i64)
  ^bb91:  // pred: ^bb86
    %746 = llvm.add %696, %695  : i64
    llvm.br ^bb84(%746 : i64)
  ^bb92:  // pred: ^bb84
    %747 = llvm.add %691, %690  : i64
    llvm.br ^bb82(%747 : i64)
  ^bb93:  // pred: ^bb82
    %748 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>
    %749 = llvm.insertvalue %327, %748[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %750 = llvm.insertvalue %572, %749[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %751 = llvm.insertvalue %687, %750[2] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> 
    llvm.return %751 : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, %arg2: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>>) attributes {input_names = ["v6_0", "v5_0"], llvm.emit_c_interface, output_names = ["v0_0", "v4_0", "v1_0"]} {
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
    %12 = llvm.load %arg2 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>>
    %13 = llvm.extractvalue %12[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %14 = llvm.extractvalue %12[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %15 = llvm.extractvalue %12[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %16 = llvm.extractvalue %12[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %17 = llvm.extractvalue %12[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %18 = llvm.extractvalue %12[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %19 = llvm.extractvalue %12[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %20 = llvm.extractvalue %12[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %21 = llvm.extractvalue %12[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %22 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11, %13, %14, %15, %16, %17, %18, %19, %20, %21) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>
    llvm.store %22, %arg0 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>>
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
    %44 = llvm.mlir.constant(1 : i64) : i64
    %45 = llvm.getelementptr %0[%44] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %46 = llvm.load %45 : !llvm.ptr<ptr<i8>>
    %47 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>>
    %48 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>
    %49 = llvm.call @omTensorGetDataPtr(%46) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %50 = llvm.bitcast %49 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %51 = llvm.insertvalue %50, %48[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %52 = llvm.insertvalue %50, %51[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %53 = llvm.mlir.constant(0 : i64) : i64
    %54 = llvm.insertvalue %53, %52[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %55 = llvm.call @omTensorGetShape(%46) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %56 = llvm.call @omTensorGetStrides(%46) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %57 = llvm.mlir.constant(0 : i64) : i64
    %58 = llvm.getelementptr %55[%57] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %59 = llvm.load %58 : !llvm.ptr<i64>
    %60 = llvm.insertvalue %59, %54[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %61 = llvm.getelementptr %56[%57] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %62 = llvm.load %61 : !llvm.ptr<i64>
    %63 = llvm.insertvalue %62, %60[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %64 = llvm.mlir.constant(1 : i64) : i64
    %65 = llvm.getelementptr %55[%64] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %66 = llvm.load %65 : !llvm.ptr<i64>
    %67 = llvm.insertvalue %66, %63[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %68 = llvm.getelementptr %56[%64] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %69 = llvm.load %68 : !llvm.ptr<i64>
    %70 = llvm.insertvalue %69, %67[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %71 = llvm.mlir.constant(2 : i64) : i64
    %72 = llvm.getelementptr %55[%71] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %73 = llvm.load %72 : !llvm.ptr<i64>
    %74 = llvm.insertvalue %73, %70[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %75 = llvm.getelementptr %56[%71] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %76 = llvm.load %75 : !llvm.ptr<i64>
    %77 = llvm.insertvalue %76, %74[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    llvm.store %77, %47 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>>
    llvm.call @_mlir_ciface_main_graph(%2, %6, %47) : (!llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>>) -> ()
    %78 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %79 = llvm.extractvalue %78[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %80 = llvm.extractvalue %78[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %81 = llvm.extractvalue %78[2] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %82 = llvm.mlir.constant(3 : i64) : i64
    %83 = llvm.mlir.constant(24 : i64) : i64
    %84 = llvm.call @malloc(%83) : (i64) -> !llvm.ptr<i8>
    %85 = llvm.bitcast %84 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %86 = llvm.mlir.constant(4 : i64) : i64
    %87 = llvm.call @omTensorCreateUntyped(%86) : (i64) -> !llvm.ptr<i8>
    %88 = llvm.mlir.constant(1 : i64) : i64
    %89 = llvm.extractvalue %79[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %90 = llvm.bitcast %89 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %91 = llvm.extractvalue %79[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %92 = llvm.bitcast %91 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%87, %88, %90, %92) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %93 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%87, %93) : (!llvm.ptr<i8>, i64) -> ()
    %94 = llvm.call @omTensorGetShape(%87) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %95 = llvm.call @omTensorGetStrides(%87) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %96 = llvm.mlir.constant(0 : i64) : i64
    %97 = llvm.extractvalue %79[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %98 = llvm.getelementptr %94[%96] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %97, %98 : !llvm.ptr<i64>
    %99 = llvm.extractvalue %79[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %100 = llvm.getelementptr %95[%96] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %99, %100 : !llvm.ptr<i64>
    %101 = llvm.mlir.constant(1 : i64) : i64
    %102 = llvm.extractvalue %79[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %103 = llvm.getelementptr %94[%101] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %102, %103 : !llvm.ptr<i64>
    %104 = llvm.extractvalue %79[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %105 = llvm.getelementptr %95[%101] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %104, %105 : !llvm.ptr<i64>
    %106 = llvm.mlir.constant(2 : i64) : i64
    %107 = llvm.extractvalue %79[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %108 = llvm.getelementptr %94[%106] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %107, %108 : !llvm.ptr<i64>
    %109 = llvm.extractvalue %79[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %110 = llvm.getelementptr %95[%106] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %109, %110 : !llvm.ptr<i64>
    %111 = llvm.mlir.constant(3 : i64) : i64
    %112 = llvm.extractvalue %79[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %113 = llvm.getelementptr %94[%111] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %112, %113 : !llvm.ptr<i64>
    %114 = llvm.extractvalue %79[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %115 = llvm.getelementptr %95[%111] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %114, %115 : !llvm.ptr<i64>
    %116 = llvm.mlir.constant(0 : i64) : i64
    %117 = llvm.getelementptr %85[%116] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %87, %117 : !llvm.ptr<ptr<i8>>
    %118 = llvm.mlir.constant(3 : i64) : i64
    %119 = llvm.call @omTensorCreateUntyped(%118) : (i64) -> !llvm.ptr<i8>
    %120 = llvm.mlir.constant(1 : i64) : i64
    %121 = llvm.extractvalue %80[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %122 = llvm.bitcast %121 : !llvm.ptr<i64> to !llvm.ptr<i8>
    %123 = llvm.extractvalue %80[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %124 = llvm.bitcast %123 : !llvm.ptr<i64> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%119, %120, %122, %124) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %125 = llvm.mlir.constant(7 : i64) : i64
    llvm.call @omTensorSetDataType(%119, %125) : (!llvm.ptr<i8>, i64) -> ()
    %126 = llvm.call @omTensorGetShape(%119) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %127 = llvm.call @omTensorGetStrides(%119) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %128 = llvm.mlir.constant(0 : i64) : i64
    %129 = llvm.extractvalue %80[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %130 = llvm.getelementptr %126[%128] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %129, %130 : !llvm.ptr<i64>
    %131 = llvm.extractvalue %80[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %132 = llvm.getelementptr %127[%128] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %131, %132 : !llvm.ptr<i64>
    %133 = llvm.mlir.constant(1 : i64) : i64
    %134 = llvm.extractvalue %80[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %135 = llvm.getelementptr %126[%133] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %134, %135 : !llvm.ptr<i64>
    %136 = llvm.extractvalue %80[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %137 = llvm.getelementptr %127[%133] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %136, %137 : !llvm.ptr<i64>
    %138 = llvm.mlir.constant(2 : i64) : i64
    %139 = llvm.extractvalue %80[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %140 = llvm.getelementptr %126[%138] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %139, %140 : !llvm.ptr<i64>
    %141 = llvm.extractvalue %80[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %142 = llvm.getelementptr %127[%138] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %141, %142 : !llvm.ptr<i64>
    %143 = llvm.mlir.constant(1 : i64) : i64
    %144 = llvm.getelementptr %85[%143] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %119, %144 : !llvm.ptr<ptr<i8>>
    %145 = llvm.mlir.constant(4 : i64) : i64
    %146 = llvm.call @omTensorCreateUntyped(%145) : (i64) -> !llvm.ptr<i8>
    %147 = llvm.mlir.constant(1 : i64) : i64
    %148 = llvm.extractvalue %81[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %149 = llvm.bitcast %148 : !llvm.ptr<i1> to !llvm.ptr<i8>
    %150 = llvm.extractvalue %81[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %151 = llvm.bitcast %150 : !llvm.ptr<i1> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%146, %147, %149, %151) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %152 = llvm.mlir.constant(9 : i64) : i64
    llvm.call @omTensorSetDataType(%146, %152) : (!llvm.ptr<i8>, i64) -> ()
    %153 = llvm.call @omTensorGetShape(%146) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %154 = llvm.call @omTensorGetStrides(%146) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %155 = llvm.mlir.constant(0 : i64) : i64
    %156 = llvm.extractvalue %81[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %157 = llvm.getelementptr %153[%155] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %156, %157 : !llvm.ptr<i64>
    %158 = llvm.extractvalue %81[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %159 = llvm.getelementptr %154[%155] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %158, %159 : !llvm.ptr<i64>
    %160 = llvm.mlir.constant(1 : i64) : i64
    %161 = llvm.extractvalue %81[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %162 = llvm.getelementptr %153[%160] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %161, %162 : !llvm.ptr<i64>
    %163 = llvm.extractvalue %81[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %164 = llvm.getelementptr %154[%160] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %163, %164 : !llvm.ptr<i64>
    %165 = llvm.mlir.constant(2 : i64) : i64
    %166 = llvm.extractvalue %81[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %167 = llvm.getelementptr %153[%165] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %166, %167 : !llvm.ptr<i64>
    %168 = llvm.extractvalue %81[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %169 = llvm.getelementptr %154[%165] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %168, %169 : !llvm.ptr<i64>
    %170 = llvm.mlir.constant(3 : i64) : i64
    %171 = llvm.extractvalue %81[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %172 = llvm.getelementptr %153[%170] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %171, %172 : !llvm.ptr<i64>
    %173 = llvm.extractvalue %81[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %174 = llvm.getelementptr %154[%170] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %173, %174 : !llvm.ptr<i64>
    %175 = llvm.mlir.constant(2 : i64) : i64
    %176 = llvm.getelementptr %85[%175] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %146, %176 : !llvm.ptr<ptr<i8>>
    %177 = llvm.call @omTensorListCreate(%85, %82, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %177 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_in_sig : !llvm.ptr<array<138 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<138 x i8>> to !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<206 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<206 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

