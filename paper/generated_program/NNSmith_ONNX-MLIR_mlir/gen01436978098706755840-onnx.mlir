module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [2 , 3 , 1 , 1] , \22name\22 : \22v4_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 3 , 1 , 1] , \22name\22 : \22v2_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i64\22 , \22dims\22 : [1 , 1 , 1] , \22name\22 : \22v3_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [2 , 3 , 1 , 1] , \22name\22 : \22v0_0\22 }\0A ,    { \22type\22 : \22i1\22 , \22dims\22 : [4 , 3 , 1 , 1] , \22name\22 : \22v1_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.mlir.global internal constant @constant_0(dense<[[[[6]], [[4]], [[4]]]]> : tensor<1x3x1x1xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x array<3 x array<1 x array<1 x i32>>>>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64, %arg11: !llvm.ptr<i32>, %arg12: !llvm.ptr<i32>, %arg13: i64, %arg14: i64, %arg15: i64, %arg16: i64, %arg17: i64, %arg18: i64, %arg19: i64, %arg20: i64, %arg21: i64) -> !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> attributes {input_names = ["v4_0", "v2_0"], llvm.emit_c_interface, output_names = ["v3_0", "v0_0", "v1_0"]} {
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
    %12 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %13 = llvm.insertvalue %arg11, %12[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %14 = llvm.insertvalue %arg12, %13[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %15 = llvm.insertvalue %arg13, %14[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %16 = llvm.insertvalue %arg14, %15[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %17 = llvm.insertvalue %arg18, %16[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %18 = llvm.insertvalue %arg15, %17[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %19 = llvm.insertvalue %arg19, %18[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %20 = llvm.insertvalue %arg16, %19[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %21 = llvm.insertvalue %arg20, %20[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %22 = llvm.insertvalue %arg17, %21[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %23 = llvm.insertvalue %arg21, %22[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %24 = llvm.mlir.constant(0 : index) : i64
    %25 = llvm.mlir.constant(0 : i64) : i64
    %26 = llvm.mlir.constant(-1 : i64) : i64
    %27 = llvm.mlir.addressof @constant_0 : !llvm.ptr<array<1 x array<3 x array<1 x array<1 x i32>>>>>
    %28 = llvm.bitcast %27 : !llvm.ptr<array<1 x array<3 x array<1 x array<1 x i32>>>>> to !llvm.ptr<i32>
    %29 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %30 = llvm.insertvalue %28, %29[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %31 = llvm.insertvalue %28, %30[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %32 = llvm.mlir.constant(0 : index) : i64
    %33 = llvm.insertvalue %32, %31[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %34 = llvm.mlir.constant(1 : index) : i64
    %35 = llvm.insertvalue %34, %33[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %36 = llvm.mlir.constant(3 : index) : i64
    %37 = llvm.insertvalue %36, %35[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %38 = llvm.mlir.constant(3 : index) : i64
    %39 = llvm.insertvalue %38, %37[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %40 = llvm.mlir.constant(1 : index) : i64
    %41 = llvm.insertvalue %40, %39[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %42 = llvm.mlir.constant(1 : index) : i64
    %43 = llvm.insertvalue %42, %41[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %44 = llvm.mlir.constant(1 : index) : i64
    %45 = llvm.insertvalue %44, %43[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %46 = llvm.mlir.constant(1 : index) : i64
    %47 = llvm.insertvalue %46, %45[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %48 = llvm.mlir.constant(1 : index) : i64
    %49 = llvm.insertvalue %48, %47[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %50 = llvm.mlir.constant(1 : index) : i64
    %51 = llvm.mlir.constant(1 : index) : i64
    %52 = llvm.mlir.constant(1 : index) : i64
    %53 = llvm.mlir.constant(1 : index) : i64
    %54 = llvm.mlir.null : !llvm.ptr<i64>
    %55 = llvm.getelementptr %54[%50] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %56 = llvm.ptrtoint %55 : !llvm.ptr<i64> to i64
    %57 = llvm.mlir.constant(16 : index) : i64
    %58 = llvm.add %56, %57  : i64
    %59 = llvm.call @malloc(%58) : (i64) -> !llvm.ptr<i8>
    %60 = llvm.bitcast %59 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %61 = llvm.ptrtoint %60 : !llvm.ptr<i64> to i64
    %62 = llvm.mlir.constant(1 : index) : i64
    %63 = llvm.sub %57, %62  : i64
    %64 = llvm.add %61, %63  : i64
    %65 = llvm.urem %64, %57  : i64
    %66 = llvm.sub %64, %65  : i64
    %67 = llvm.inttoptr %66 : i64 to !llvm.ptr<i64>
    %68 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>
    %69 = llvm.insertvalue %60, %68[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %70 = llvm.insertvalue %67, %69[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %71 = llvm.mlir.constant(0 : index) : i64
    %72 = llvm.insertvalue %71, %70[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %73 = llvm.insertvalue %50, %72[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %74 = llvm.insertvalue %51, %73[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %75 = llvm.insertvalue %52, %74[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %76 = llvm.insertvalue %51, %75[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %77 = llvm.insertvalue %52, %76[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %78 = llvm.insertvalue %53, %77[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %79 = llvm.mlir.constant(0 : index) : i64
    %80 = llvm.mlir.constant(1 : index) : i64
    %81 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%79 : i64)
  ^bb1(%82: i64):  // 2 preds: ^bb0, ^bb8
    %83 = llvm.icmp "slt" %82, %80 : i64
    llvm.cond_br %83, ^bb2, ^bb9
  ^bb2:  // pred: ^bb1
    %84 = llvm.mlir.constant(0 : index) : i64
    %85 = llvm.mlir.constant(1 : index) : i64
    %86 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%84 : i64)
  ^bb3(%87: i64):  // 2 preds: ^bb2, ^bb7
    %88 = llvm.icmp "slt" %87, %85 : i64
    llvm.cond_br %88, ^bb4, ^bb8
  ^bb4:  // pred: ^bb3
    %89 = llvm.mlir.constant(0 : index) : i64
    %90 = llvm.mlir.constant(1 : index) : i64
    %91 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%89 : i64)
  ^bb5(%92: i64):  // 2 preds: ^bb4, ^bb6
    %93 = llvm.icmp "slt" %92, %90 : i64
    llvm.cond_br %93, ^bb6, ^bb7
  ^bb6:  // pred: ^bb5
    %94 = llvm.extractvalue %78[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %95 = llvm.add %82, %87  : i64
    %96 = llvm.add %95, %92  : i64
    %97 = llvm.getelementptr %94[%96] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %26, %97 : !llvm.ptr<i64>
    %98 = llvm.add %92, %91  : i64
    llvm.br ^bb5(%98 : i64)
  ^bb7:  // pred: ^bb5
    %99 = llvm.add %87, %86  : i64
    llvm.br ^bb3(%99 : i64)
  ^bb8:  // pred: ^bb3
    %100 = llvm.add %82, %81  : i64
    llvm.br ^bb1(%100 : i64)
  ^bb9:  // pred: ^bb1
    %101 = llvm.mlir.constant(0 : index) : i64
    %102 = llvm.mlir.constant(1 : index) : i64
    %103 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb10(%101 : i64)
  ^bb10(%104: i64):  // 2 preds: ^bb9, ^bb20
    %105 = llvm.icmp "slt" %104, %102 : i64
    llvm.cond_br %105, ^bb11, ^bb21
  ^bb11:  // pred: ^bb10
    %106 = llvm.mlir.constant(0 : index) : i64
    %107 = llvm.mlir.constant(3 : index) : i64
    %108 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb12(%106 : i64)
  ^bb12(%109: i64):  // 2 preds: ^bb11, ^bb19
    %110 = llvm.icmp "slt" %109, %107 : i64
    llvm.cond_br %110, ^bb13, ^bb20
  ^bb13:  // pred: ^bb12
    %111 = llvm.mlir.constant(0 : index) : i64
    %112 = llvm.mlir.constant(1 : index) : i64
    %113 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb14(%111 : i64)
  ^bb14(%114: i64):  // 2 preds: ^bb13, ^bb18
    %115 = llvm.icmp "slt" %114, %112 : i64
    llvm.cond_br %115, ^bb15, ^bb19
  ^bb15:  // pred: ^bb14
    %116 = llvm.mlir.constant(0 : index) : i64
    %117 = llvm.mlir.constant(1 : index) : i64
    %118 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb16(%116 : i64)
  ^bb16(%119: i64):  // 2 preds: ^bb15, ^bb17
    %120 = llvm.icmp "slt" %119, %117 : i64
    llvm.cond_br %120, ^bb17, ^bb18
  ^bb17:  // pred: ^bb16
    %121 = llvm.extractvalue %23[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %122 = llvm.mlir.constant(3 : index) : i64
    %123 = llvm.mul %104, %122  : i64
    %124 = llvm.add %123, %109  : i64
    %125 = llvm.add %124, %114  : i64
    %126 = llvm.add %125, %119  : i64
    %127 = llvm.getelementptr %121[%126] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %128 = llvm.load %127 : !llvm.ptr<i32>
    %129 = llvm.extractvalue %78[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %130 = llvm.add %104, %114  : i64
    %131 = llvm.add %130, %119  : i64
    %132 = llvm.getelementptr %129[%131] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %133 = llvm.load %132 : !llvm.ptr<i64>
    %134 = llvm.icmp "slt" %133, %25 : i64
    %135 = llvm.select %134, %25, %133 : i1, i64
    %136 = llvm.extractvalue %23[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %137 = llvm.mlir.constant(3 : index) : i64
    %138 = llvm.mul %104, %137  : i64
    %139 = llvm.add %138, %135  : i64
    %140 = llvm.add %139, %114  : i64
    %141 = llvm.add %140, %119  : i64
    %142 = llvm.getelementptr %136[%141] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %143 = llvm.load %142 : !llvm.ptr<i32>
    %144 = llvm.icmp "sgt" %128, %143 : i32
    %145 = llvm.select %144, %109, %135 : i1, i64
    %146 = llvm.extractvalue %78[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %147 = llvm.add %104, %114  : i64
    %148 = llvm.add %147, %119  : i64
    %149 = llvm.getelementptr %146[%148] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %145, %149 : !llvm.ptr<i64>
    %150 = llvm.add %119, %118  : i64
    llvm.br ^bb16(%150 : i64)
  ^bb18:  // pred: ^bb16
    %151 = llvm.add %114, %113  : i64
    llvm.br ^bb14(%151 : i64)
  ^bb19:  // pred: ^bb14
    %152 = llvm.add %109, %108  : i64
    llvm.br ^bb12(%152 : i64)
  ^bb20:  // pred: ^bb12
    %153 = llvm.add %104, %103  : i64
    llvm.br ^bb10(%153 : i64)
  ^bb21:  // pred: ^bb10
    %154 = llvm.mlir.constant(2 : index) : i64
    %155 = llvm.mlir.constant(3 : index) : i64
    %156 = llvm.mlir.constant(1 : index) : i64
    %157 = llvm.mlir.constant(1 : index) : i64
    %158 = llvm.mlir.constant(1 : index) : i64
    %159 = llvm.mlir.constant(6 : index) : i64
    %160 = llvm.mlir.null : !llvm.ptr<i32>
    %161 = llvm.getelementptr %160[%159] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %162 = llvm.ptrtoint %161 : !llvm.ptr<i32> to i64
    %163 = llvm.mlir.constant(16 : index) : i64
    %164 = llvm.add %162, %163  : i64
    %165 = llvm.call @malloc(%164) : (i64) -> !llvm.ptr<i8>
    %166 = llvm.bitcast %165 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %167 = llvm.ptrtoint %166 : !llvm.ptr<i32> to i64
    %168 = llvm.mlir.constant(1 : index) : i64
    %169 = llvm.sub %163, %168  : i64
    %170 = llvm.add %167, %169  : i64
    %171 = llvm.urem %170, %163  : i64
    %172 = llvm.sub %170, %171  : i64
    %173 = llvm.inttoptr %172 : i64 to !llvm.ptr<i32>
    %174 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %175 = llvm.insertvalue %166, %174[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %176 = llvm.insertvalue %173, %175[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %177 = llvm.mlir.constant(0 : index) : i64
    %178 = llvm.insertvalue %177, %176[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %179 = llvm.insertvalue %154, %178[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %180 = llvm.insertvalue %155, %179[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %181 = llvm.insertvalue %156, %180[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %182 = llvm.insertvalue %157, %181[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %183 = llvm.insertvalue %155, %182[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %184 = llvm.insertvalue %156, %183[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %185 = llvm.insertvalue %157, %184[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %186 = llvm.insertvalue %158, %185[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %187 = llvm.mlir.constant(0 : index) : i64
    %188 = llvm.mlir.constant(2 : index) : i64
    %189 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb22(%187 : i64)
  ^bb22(%190: i64):  // 2 preds: ^bb21, ^bb32
    %191 = llvm.icmp "slt" %190, %188 : i64
    llvm.cond_br %191, ^bb23, ^bb33
  ^bb23:  // pred: ^bb22
    %192 = llvm.mlir.constant(0 : index) : i64
    %193 = llvm.mlir.constant(3 : index) : i64
    %194 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb24(%192 : i64)
  ^bb24(%195: i64):  // 2 preds: ^bb23, ^bb31
    %196 = llvm.icmp "slt" %195, %193 : i64
    llvm.cond_br %196, ^bb25, ^bb32
  ^bb25:  // pred: ^bb24
    %197 = llvm.mlir.constant(0 : index) : i64
    %198 = llvm.mlir.constant(1 : index) : i64
    %199 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb26(%197 : i64)
  ^bb26(%200: i64):  // 2 preds: ^bb25, ^bb30
    %201 = llvm.icmp "slt" %200, %198 : i64
    llvm.cond_br %201, ^bb27, ^bb31
  ^bb27:  // pred: ^bb26
    %202 = llvm.mlir.constant(0 : index) : i64
    %203 = llvm.mlir.constant(1 : index) : i64
    %204 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb28(%202 : i64)
  ^bb28(%205: i64):  // 2 preds: ^bb27, ^bb29
    %206 = llvm.icmp "slt" %205, %203 : i64
    llvm.cond_br %206, ^bb29, ^bb30
  ^bb29:  // pred: ^bb28
    %207 = llvm.extractvalue %23[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %208 = llvm.mlir.constant(3 : index) : i64
    %209 = llvm.mul %24, %208  : i64
    %210 = llvm.add %209, %195  : i64
    %211 = llvm.add %210, %200  : i64
    %212 = llvm.add %211, %205  : i64
    %213 = llvm.getelementptr %207[%212] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %214 = llvm.load %213 : !llvm.ptr<i32>
    %215 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %216 = llvm.mlir.constant(3 : index) : i64
    %217 = llvm.mul %190, %216  : i64
    %218 = llvm.add %217, %195  : i64
    %219 = llvm.add %218, %200  : i64
    %220 = llvm.add %219, %205  : i64
    %221 = llvm.getelementptr %215[%220] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %222 = llvm.load %221 : !llvm.ptr<i32>
    %223 = llvm.mul %214, %222  : i32
    %224 = llvm.extractvalue %186[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %225 = llvm.mlir.constant(3 : index) : i64
    %226 = llvm.mul %190, %225  : i64
    %227 = llvm.add %226, %195  : i64
    %228 = llvm.add %227, %200  : i64
    %229 = llvm.add %228, %205  : i64
    %230 = llvm.getelementptr %224[%229] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %223, %230 : !llvm.ptr<i32>
    %231 = llvm.add %205, %204  : i64
    llvm.br ^bb28(%231 : i64)
  ^bb30:  // pred: ^bb28
    %232 = llvm.add %200, %199  : i64
    llvm.br ^bb26(%232 : i64)
  ^bb31:  // pred: ^bb26
    %233 = llvm.add %195, %194  : i64
    llvm.br ^bb24(%233 : i64)
  ^bb32:  // pred: ^bb24
    %234 = llvm.add %190, %189  : i64
    llvm.br ^bb22(%234 : i64)
  ^bb33:  // pred: ^bb22
    %235 = llvm.mlir.constant(4 : index) : i64
    %236 = llvm.mlir.constant(3 : index) : i64
    %237 = llvm.mlir.constant(1 : index) : i64
    %238 = llvm.mlir.constant(1 : index) : i64
    %239 = llvm.mlir.constant(1 : index) : i64
    %240 = llvm.mlir.constant(12 : index) : i64
    %241 = llvm.mlir.null : !llvm.ptr<i32>
    %242 = llvm.getelementptr %241[%240] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %243 = llvm.ptrtoint %242 : !llvm.ptr<i32> to i64
    %244 = llvm.mlir.constant(16 : index) : i64
    %245 = llvm.add %243, %244  : i64
    %246 = llvm.call @malloc(%245) : (i64) -> !llvm.ptr<i8>
    %247 = llvm.bitcast %246 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %248 = llvm.ptrtoint %247 : !llvm.ptr<i32> to i64
    %249 = llvm.mlir.constant(1 : index) : i64
    %250 = llvm.sub %244, %249  : i64
    %251 = llvm.add %248, %250  : i64
    %252 = llvm.urem %251, %244  : i64
    %253 = llvm.sub %251, %252  : i64
    %254 = llvm.inttoptr %253 : i64 to !llvm.ptr<i32>
    %255 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %256 = llvm.insertvalue %247, %255[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %257 = llvm.insertvalue %254, %256[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %258 = llvm.mlir.constant(0 : index) : i64
    %259 = llvm.insertvalue %258, %257[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %260 = llvm.insertvalue %235, %259[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %261 = llvm.insertvalue %236, %260[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %262 = llvm.insertvalue %237, %261[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %263 = llvm.insertvalue %238, %262[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %264 = llvm.insertvalue %236, %263[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %265 = llvm.insertvalue %237, %264[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %266 = llvm.insertvalue %238, %265[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %267 = llvm.insertvalue %239, %266[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %268 = llvm.mlir.constant(0 : index) : i64
    %269 = llvm.mlir.constant(1 : index) : i64
    %270 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb34(%268 : i64)
  ^bb34(%271: i64):  // 2 preds: ^bb33, ^bb44
    %272 = llvm.icmp "slt" %271, %269 : i64
    llvm.cond_br %272, ^bb35, ^bb45
  ^bb35:  // pred: ^bb34
    %273 = llvm.mlir.constant(0 : index) : i64
    %274 = llvm.mlir.constant(3 : index) : i64
    %275 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb36(%273 : i64)
  ^bb36(%276: i64):  // 2 preds: ^bb35, ^bb43
    %277 = llvm.icmp "slt" %276, %274 : i64
    llvm.cond_br %277, ^bb37, ^bb44
  ^bb37:  // pred: ^bb36
    %278 = llvm.mlir.constant(0 : index) : i64
    %279 = llvm.mlir.constant(1 : index) : i64
    %280 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb38(%278 : i64)
  ^bb38(%281: i64):  // 2 preds: ^bb37, ^bb42
    %282 = llvm.icmp "slt" %281, %279 : i64
    llvm.cond_br %282, ^bb39, ^bb43
  ^bb39:  // pred: ^bb38
    %283 = llvm.mlir.constant(0 : index) : i64
    %284 = llvm.mlir.constant(1 : index) : i64
    %285 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb40(%283 : i64)
  ^bb40(%286: i64):  // 2 preds: ^bb39, ^bb41
    %287 = llvm.icmp "slt" %286, %284 : i64
    llvm.cond_br %287, ^bb41, ^bb42
  ^bb41:  // pred: ^bb40
    %288 = llvm.extractvalue %23[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %289 = llvm.mlir.constant(3 : index) : i64
    %290 = llvm.mul %271, %289  : i64
    %291 = llvm.add %290, %276  : i64
    %292 = llvm.add %291, %281  : i64
    %293 = llvm.add %292, %286  : i64
    %294 = llvm.getelementptr %288[%293] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %295 = llvm.load %294 : !llvm.ptr<i32>
    %296 = llvm.extractvalue %267[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %297 = llvm.mlir.constant(3 : index) : i64
    %298 = llvm.mul %271, %297  : i64
    %299 = llvm.add %298, %276  : i64
    %300 = llvm.add %299, %281  : i64
    %301 = llvm.add %300, %286  : i64
    %302 = llvm.getelementptr %296[%301] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %295, %302 : !llvm.ptr<i32>
    %303 = llvm.add %286, %285  : i64
    llvm.br ^bb40(%303 : i64)
  ^bb42:  // pred: ^bb40
    %304 = llvm.add %281, %280  : i64
    llvm.br ^bb38(%304 : i64)
  ^bb43:  // pred: ^bb38
    %305 = llvm.add %276, %275  : i64
    llvm.br ^bb36(%305 : i64)
  ^bb44:  // pred: ^bb36
    %306 = llvm.add %271, %270  : i64
    llvm.br ^bb34(%306 : i64)
  ^bb45:  // pred: ^bb34
    %307 = llvm.mlir.constant(0 : index) : i64
    %308 = llvm.mlir.constant(1 : index) : i64
    %309 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb46(%307 : i64)
  ^bb46(%310: i64):  // 2 preds: ^bb45, ^bb56
    %311 = llvm.icmp "slt" %310, %308 : i64
    llvm.cond_br %311, ^bb47, ^bb57
  ^bb47:  // pred: ^bb46
    %312 = llvm.mlir.constant(0 : index) : i64
    %313 = llvm.mlir.constant(3 : index) : i64
    %314 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb48(%312 : i64)
  ^bb48(%315: i64):  // 2 preds: ^bb47, ^bb55
    %316 = llvm.icmp "slt" %315, %313 : i64
    llvm.cond_br %316, ^bb49, ^bb56
  ^bb49:  // pred: ^bb48
    %317 = llvm.mlir.constant(0 : index) : i64
    %318 = llvm.mlir.constant(1 : index) : i64
    %319 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb50(%317 : i64)
  ^bb50(%320: i64):  // 2 preds: ^bb49, ^bb54
    %321 = llvm.icmp "slt" %320, %318 : i64
    llvm.cond_br %321, ^bb51, ^bb55
  ^bb51:  // pred: ^bb50
    %322 = llvm.mlir.constant(0 : index) : i64
    %323 = llvm.mlir.constant(1 : index) : i64
    %324 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb52(%322 : i64)
  ^bb52(%325: i64):  // 2 preds: ^bb51, ^bb53
    %326 = llvm.icmp "slt" %325, %323 : i64
    llvm.cond_br %326, ^bb53, ^bb54
  ^bb53:  // pred: ^bb52
    %327 = llvm.mlir.constant(1 : index) : i64
    %328 = llvm.add %310, %327  : i64
    %329 = llvm.extractvalue %49[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %330 = llvm.mlir.constant(3 : index) : i64
    %331 = llvm.mul %310, %330  : i64
    %332 = llvm.add %331, %315  : i64
    %333 = llvm.add %332, %320  : i64
    %334 = llvm.add %333, %325  : i64
    %335 = llvm.getelementptr %329[%334] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %336 = llvm.load %335 : !llvm.ptr<i32>
    %337 = llvm.extractvalue %267[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %338 = llvm.mlir.constant(3 : index) : i64
    %339 = llvm.mul %328, %338  : i64
    %340 = llvm.add %339, %315  : i64
    %341 = llvm.add %340, %320  : i64
    %342 = llvm.add %341, %325  : i64
    %343 = llvm.getelementptr %337[%342] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %336, %343 : !llvm.ptr<i32>
    %344 = llvm.add %325, %324  : i64
    llvm.br ^bb52(%344 : i64)
  ^bb54:  // pred: ^bb52
    %345 = llvm.add %320, %319  : i64
    llvm.br ^bb50(%345 : i64)
  ^bb55:  // pred: ^bb50
    %346 = llvm.add %315, %314  : i64
    llvm.br ^bb48(%346 : i64)
  ^bb56:  // pred: ^bb48
    %347 = llvm.add %310, %309  : i64
    llvm.br ^bb46(%347 : i64)
  ^bb57:  // pred: ^bb46
    %348 = llvm.mlir.constant(0 : index) : i64
    %349 = llvm.mlir.constant(2 : index) : i64
    %350 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb58(%348 : i64)
  ^bb58(%351: i64):  // 2 preds: ^bb57, ^bb68
    %352 = llvm.icmp "slt" %351, %349 : i64
    llvm.cond_br %352, ^bb59, ^bb69
  ^bb59:  // pred: ^bb58
    %353 = llvm.mlir.constant(0 : index) : i64
    %354 = llvm.mlir.constant(3 : index) : i64
    %355 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb60(%353 : i64)
  ^bb60(%356: i64):  // 2 preds: ^bb59, ^bb67
    %357 = llvm.icmp "slt" %356, %354 : i64
    llvm.cond_br %357, ^bb61, ^bb68
  ^bb61:  // pred: ^bb60
    %358 = llvm.mlir.constant(0 : index) : i64
    %359 = llvm.mlir.constant(1 : index) : i64
    %360 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb62(%358 : i64)
  ^bb62(%361: i64):  // 2 preds: ^bb61, ^bb66
    %362 = llvm.icmp "slt" %361, %359 : i64
    llvm.cond_br %362, ^bb63, ^bb67
  ^bb63:  // pred: ^bb62
    %363 = llvm.mlir.constant(0 : index) : i64
    %364 = llvm.mlir.constant(1 : index) : i64
    %365 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb64(%363 : i64)
  ^bb64(%366: i64):  // 2 preds: ^bb63, ^bb65
    %367 = llvm.icmp "slt" %366, %364 : i64
    llvm.cond_br %367, ^bb65, ^bb66
  ^bb65:  // pred: ^bb64
    %368 = llvm.mlir.constant(2 : index) : i64
    %369 = llvm.add %351, %368  : i64
    %370 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %371 = llvm.mlir.constant(3 : index) : i64
    %372 = llvm.mul %351, %371  : i64
    %373 = llvm.add %372, %356  : i64
    %374 = llvm.add %373, %361  : i64
    %375 = llvm.add %374, %366  : i64
    %376 = llvm.getelementptr %370[%375] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %377 = llvm.load %376 : !llvm.ptr<i32>
    %378 = llvm.extractvalue %267[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %379 = llvm.mlir.constant(3 : index) : i64
    %380 = llvm.mul %369, %379  : i64
    %381 = llvm.add %380, %356  : i64
    %382 = llvm.add %381, %361  : i64
    %383 = llvm.add %382, %366  : i64
    %384 = llvm.getelementptr %378[%383] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %377, %384 : !llvm.ptr<i32>
    %385 = llvm.add %366, %365  : i64
    llvm.br ^bb64(%385 : i64)
  ^bb66:  // pred: ^bb64
    %386 = llvm.add %361, %360  : i64
    llvm.br ^bb62(%386 : i64)
  ^bb67:  // pred: ^bb62
    %387 = llvm.add %356, %355  : i64
    llvm.br ^bb60(%387 : i64)
  ^bb68:  // pred: ^bb60
    %388 = llvm.add %351, %350  : i64
    llvm.br ^bb58(%388 : i64)
  ^bb69:  // pred: ^bb58
    %389 = llvm.mlir.constant(4 : index) : i64
    %390 = llvm.mlir.constant(3 : index) : i64
    %391 = llvm.mlir.constant(1 : index) : i64
    %392 = llvm.mlir.constant(1 : index) : i64
    %393 = llvm.mlir.constant(1 : index) : i64
    %394 = llvm.mlir.constant(12 : index) : i64
    %395 = llvm.mlir.null : !llvm.ptr<i1>
    %396 = llvm.getelementptr %395[%394] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %397 = llvm.ptrtoint %396 : !llvm.ptr<i1> to i64
    %398 = llvm.mlir.constant(16 : index) : i64
    %399 = llvm.add %397, %398  : i64
    %400 = llvm.call @malloc(%399) : (i64) -> !llvm.ptr<i8>
    %401 = llvm.bitcast %400 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %402 = llvm.ptrtoint %401 : !llvm.ptr<i1> to i64
    %403 = llvm.mlir.constant(1 : index) : i64
    %404 = llvm.sub %398, %403  : i64
    %405 = llvm.add %402, %404  : i64
    %406 = llvm.urem %405, %398  : i64
    %407 = llvm.sub %405, %406  : i64
    %408 = llvm.inttoptr %407 : i64 to !llvm.ptr<i1>
    %409 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>
    %410 = llvm.insertvalue %401, %409[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %411 = llvm.insertvalue %408, %410[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %412 = llvm.mlir.constant(0 : index) : i64
    %413 = llvm.insertvalue %412, %411[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %414 = llvm.insertvalue %389, %413[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %415 = llvm.insertvalue %390, %414[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %416 = llvm.insertvalue %391, %415[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %417 = llvm.insertvalue %392, %416[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %418 = llvm.insertvalue %390, %417[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %419 = llvm.insertvalue %391, %418[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %420 = llvm.insertvalue %392, %419[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %421 = llvm.insertvalue %393, %420[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %422 = llvm.mlir.constant(0 : index) : i64
    %423 = llvm.mlir.constant(4 : index) : i64
    %424 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb70(%422 : i64)
  ^bb70(%425: i64):  // 2 preds: ^bb69, ^bb80
    %426 = llvm.icmp "slt" %425, %423 : i64
    llvm.cond_br %426, ^bb71, ^bb81
  ^bb71:  // pred: ^bb70
    %427 = llvm.mlir.constant(0 : index) : i64
    %428 = llvm.mlir.constant(3 : index) : i64
    %429 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb72(%427 : i64)
  ^bb72(%430: i64):  // 2 preds: ^bb71, ^bb79
    %431 = llvm.icmp "slt" %430, %428 : i64
    llvm.cond_br %431, ^bb73, ^bb80
  ^bb73:  // pred: ^bb72
    %432 = llvm.mlir.constant(0 : index) : i64
    %433 = llvm.mlir.constant(1 : index) : i64
    %434 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb74(%432 : i64)
  ^bb74(%435: i64):  // 2 preds: ^bb73, ^bb78
    %436 = llvm.icmp "slt" %435, %433 : i64
    llvm.cond_br %436, ^bb75, ^bb79
  ^bb75:  // pred: ^bb74
    %437 = llvm.mlir.constant(0 : index) : i64
    %438 = llvm.mlir.constant(1 : index) : i64
    %439 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb76(%437 : i64)
  ^bb76(%440: i64):  // 2 preds: ^bb75, ^bb77
    %441 = llvm.icmp "slt" %440, %438 : i64
    llvm.cond_br %441, ^bb77, ^bb78
  ^bb77:  // pred: ^bb76
    %442 = llvm.extractvalue %267[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %443 = llvm.mlir.constant(3 : index) : i64
    %444 = llvm.mul %425, %443  : i64
    %445 = llvm.add %444, %430  : i64
    %446 = llvm.add %445, %435  : i64
    %447 = llvm.add %446, %440  : i64
    %448 = llvm.getelementptr %442[%447] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %449 = llvm.load %448 : !llvm.ptr<i32>
    %450 = llvm.extractvalue %267[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %451 = llvm.mlir.constant(3 : index) : i64
    %452 = llvm.mul %425, %451  : i64
    %453 = llvm.add %452, %430  : i64
    %454 = llvm.add %453, %435  : i64
    %455 = llvm.add %454, %440  : i64
    %456 = llvm.getelementptr %450[%455] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %457 = llvm.load %456 : !llvm.ptr<i32>
    %458 = llvm.icmp "slt" %449, %457 : i32
    %459 = llvm.extractvalue %421[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %460 = llvm.mlir.constant(3 : index) : i64
    %461 = llvm.mul %425, %460  : i64
    %462 = llvm.add %461, %430  : i64
    %463 = llvm.add %462, %435  : i64
    %464 = llvm.add %463, %440  : i64
    %465 = llvm.getelementptr %459[%464] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %458, %465 : !llvm.ptr<i1>
    %466 = llvm.add %440, %439  : i64
    llvm.br ^bb76(%466 : i64)
  ^bb78:  // pred: ^bb76
    %467 = llvm.add %435, %434  : i64
    llvm.br ^bb74(%467 : i64)
  ^bb79:  // pred: ^bb74
    %468 = llvm.add %430, %429  : i64
    llvm.br ^bb72(%468 : i64)
  ^bb80:  // pred: ^bb72
    %469 = llvm.add %425, %424  : i64
    llvm.br ^bb70(%469 : i64)
  ^bb81:  // pred: ^bb70
    %470 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>
    %471 = llvm.insertvalue %78, %470[0] : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %472 = llvm.insertvalue %186, %471[1] : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %473 = llvm.insertvalue %421, %472[2] : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> 
    llvm.return %473 : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, %arg2: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) attributes {input_names = ["v4_0", "v2_0"], llvm.emit_c_interface, output_names = ["v3_0", "v0_0", "v1_0"]} {
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
    %12 = llvm.load %arg2 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %13 = llvm.extractvalue %12[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %14 = llvm.extractvalue %12[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %15 = llvm.extractvalue %12[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %16 = llvm.extractvalue %12[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %17 = llvm.extractvalue %12[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %18 = llvm.extractvalue %12[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %19 = llvm.extractvalue %12[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %20 = llvm.extractvalue %12[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %21 = llvm.extractvalue %12[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %22 = llvm.extractvalue %12[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %23 = llvm.extractvalue %12[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %24 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11, %13, %14, %15, %16, %17, %18, %19, %20, %21, %22, %23) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>
    llvm.store %24, %arg0 : !llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>>
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
    %47 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %48 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %49 = llvm.call @omTensorGetDataPtr(%46) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %50 = llvm.bitcast %49 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %51 = llvm.insertvalue %50, %48[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %52 = llvm.insertvalue %50, %51[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %53 = llvm.mlir.constant(0 : i64) : i64
    %54 = llvm.insertvalue %53, %52[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %55 = llvm.call @omTensorGetShape(%46) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %56 = llvm.call @omTensorGetStrides(%46) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %57 = llvm.mlir.constant(0 : i64) : i64
    %58 = llvm.getelementptr %55[%57] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %59 = llvm.load %58 : !llvm.ptr<i64>
    %60 = llvm.insertvalue %59, %54[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %61 = llvm.getelementptr %56[%57] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %62 = llvm.load %61 : !llvm.ptr<i64>
    %63 = llvm.insertvalue %62, %60[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %64 = llvm.mlir.constant(1 : i64) : i64
    %65 = llvm.getelementptr %55[%64] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %66 = llvm.load %65 : !llvm.ptr<i64>
    %67 = llvm.insertvalue %66, %63[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %68 = llvm.getelementptr %56[%64] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %69 = llvm.load %68 : !llvm.ptr<i64>
    %70 = llvm.insertvalue %69, %67[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %71 = llvm.mlir.constant(2 : i64) : i64
    %72 = llvm.getelementptr %55[%71] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %73 = llvm.load %72 : !llvm.ptr<i64>
    %74 = llvm.insertvalue %73, %70[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %75 = llvm.getelementptr %56[%71] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %76 = llvm.load %75 : !llvm.ptr<i64>
    %77 = llvm.insertvalue %76, %74[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %78 = llvm.mlir.constant(3 : i64) : i64
    %79 = llvm.getelementptr %55[%78] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %80 = llvm.load %79 : !llvm.ptr<i64>
    %81 = llvm.insertvalue %80, %77[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %82 = llvm.getelementptr %56[%78] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %83 = llvm.load %82 : !llvm.ptr<i64>
    %84 = llvm.insertvalue %83, %81[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    llvm.store %84, %47 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    llvm.call @_mlir_ciface_main_graph(%2, %6, %47) : (!llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) -> ()
    %85 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %86 = llvm.extractvalue %85[0] : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %87 = llvm.extractvalue %85[1] : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %88 = llvm.extractvalue %85[2] : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %89 = llvm.mlir.constant(3 : i64) : i64
    %90 = llvm.mlir.constant(24 : i64) : i64
    %91 = llvm.call @malloc(%90) : (i64) -> !llvm.ptr<i8>
    %92 = llvm.bitcast %91 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %93 = llvm.mlir.constant(3 : i64) : i64
    %94 = llvm.call @omTensorCreateUntyped(%93) : (i64) -> !llvm.ptr<i8>
    %95 = llvm.mlir.constant(1 : i64) : i64
    %96 = llvm.extractvalue %86[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %97 = llvm.bitcast %96 : !llvm.ptr<i64> to !llvm.ptr<i8>
    %98 = llvm.extractvalue %86[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %99 = llvm.bitcast %98 : !llvm.ptr<i64> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%94, %95, %97, %99) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %100 = llvm.mlir.constant(7 : i64) : i64
    llvm.call @omTensorSetDataType(%94, %100) : (!llvm.ptr<i8>, i64) -> ()
    %101 = llvm.call @omTensorGetShape(%94) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %102 = llvm.call @omTensorGetStrides(%94) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %103 = llvm.mlir.constant(0 : i64) : i64
    %104 = llvm.extractvalue %86[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %105 = llvm.getelementptr %101[%103] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %104, %105 : !llvm.ptr<i64>
    %106 = llvm.extractvalue %86[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %107 = llvm.getelementptr %102[%103] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %106, %107 : !llvm.ptr<i64>
    %108 = llvm.mlir.constant(1 : i64) : i64
    %109 = llvm.extractvalue %86[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %110 = llvm.getelementptr %101[%108] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %109, %110 : !llvm.ptr<i64>
    %111 = llvm.extractvalue %86[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %112 = llvm.getelementptr %102[%108] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %111, %112 : !llvm.ptr<i64>
    %113 = llvm.mlir.constant(2 : i64) : i64
    %114 = llvm.extractvalue %86[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %115 = llvm.getelementptr %101[%113] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %114, %115 : !llvm.ptr<i64>
    %116 = llvm.extractvalue %86[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %117 = llvm.getelementptr %102[%113] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %116, %117 : !llvm.ptr<i64>
    %118 = llvm.mlir.constant(0 : i64) : i64
    %119 = llvm.getelementptr %92[%118] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %94, %119 : !llvm.ptr<ptr<i8>>
    %120 = llvm.mlir.constant(4 : i64) : i64
    %121 = llvm.call @omTensorCreateUntyped(%120) : (i64) -> !llvm.ptr<i8>
    %122 = llvm.mlir.constant(1 : i64) : i64
    %123 = llvm.extractvalue %87[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %124 = llvm.bitcast %123 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %125 = llvm.extractvalue %87[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %126 = llvm.bitcast %125 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%121, %122, %124, %126) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %127 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%121, %127) : (!llvm.ptr<i8>, i64) -> ()
    %128 = llvm.call @omTensorGetShape(%121) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %129 = llvm.call @omTensorGetStrides(%121) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %130 = llvm.mlir.constant(0 : i64) : i64
    %131 = llvm.extractvalue %87[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %132 = llvm.getelementptr %128[%130] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %131, %132 : !llvm.ptr<i64>
    %133 = llvm.extractvalue %87[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %134 = llvm.getelementptr %129[%130] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %133, %134 : !llvm.ptr<i64>
    %135 = llvm.mlir.constant(1 : i64) : i64
    %136 = llvm.extractvalue %87[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %137 = llvm.getelementptr %128[%135] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %136, %137 : !llvm.ptr<i64>
    %138 = llvm.extractvalue %87[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %139 = llvm.getelementptr %129[%135] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %138, %139 : !llvm.ptr<i64>
    %140 = llvm.mlir.constant(2 : i64) : i64
    %141 = llvm.extractvalue %87[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %142 = llvm.getelementptr %128[%140] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %141, %142 : !llvm.ptr<i64>
    %143 = llvm.extractvalue %87[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %144 = llvm.getelementptr %129[%140] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %143, %144 : !llvm.ptr<i64>
    %145 = llvm.mlir.constant(3 : i64) : i64
    %146 = llvm.extractvalue %87[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %147 = llvm.getelementptr %128[%145] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %146, %147 : !llvm.ptr<i64>
    %148 = llvm.extractvalue %87[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %149 = llvm.getelementptr %129[%145] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %148, %149 : !llvm.ptr<i64>
    %150 = llvm.mlir.constant(1 : i64) : i64
    %151 = llvm.getelementptr %92[%150] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %121, %151 : !llvm.ptr<ptr<i8>>
    %152 = llvm.mlir.constant(4 : i64) : i64
    %153 = llvm.call @omTensorCreateUntyped(%152) : (i64) -> !llvm.ptr<i8>
    %154 = llvm.mlir.constant(1 : i64) : i64
    %155 = llvm.extractvalue %88[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %156 = llvm.bitcast %155 : !llvm.ptr<i1> to !llvm.ptr<i8>
    %157 = llvm.extractvalue %88[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %158 = llvm.bitcast %157 : !llvm.ptr<i1> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%153, %154, %156, %158) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %159 = llvm.mlir.constant(9 : i64) : i64
    llvm.call @omTensorSetDataType(%153, %159) : (!llvm.ptr<i8>, i64) -> ()
    %160 = llvm.call @omTensorGetShape(%153) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %161 = llvm.call @omTensorGetStrides(%153) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %162 = llvm.mlir.constant(0 : i64) : i64
    %163 = llvm.extractvalue %88[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %164 = llvm.getelementptr %160[%162] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %163, %164 : !llvm.ptr<i64>
    %165 = llvm.extractvalue %88[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %166 = llvm.getelementptr %161[%162] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %165, %166 : !llvm.ptr<i64>
    %167 = llvm.mlir.constant(1 : i64) : i64
    %168 = llvm.extractvalue %88[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %169 = llvm.getelementptr %160[%167] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %168, %169 : !llvm.ptr<i64>
    %170 = llvm.extractvalue %88[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %171 = llvm.getelementptr %161[%167] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %170, %171 : !llvm.ptr<i64>
    %172 = llvm.mlir.constant(2 : i64) : i64
    %173 = llvm.extractvalue %88[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %174 = llvm.getelementptr %160[%172] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %173, %174 : !llvm.ptr<i64>
    %175 = llvm.extractvalue %88[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %176 = llvm.getelementptr %161[%172] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %175, %176 : !llvm.ptr<i64>
    %177 = llvm.mlir.constant(3 : i64) : i64
    %178 = llvm.extractvalue %88[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %179 = llvm.getelementptr %160[%177] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %178, %179 : !llvm.ptr<i64>
    %180 = llvm.extractvalue %88[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %181 = llvm.getelementptr %161[%177] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %180, %181 : !llvm.ptr<i64>
    %182 = llvm.mlir.constant(2 : i64) : i64
    %183 = llvm.getelementptr %92[%182] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %153, %183 : !llvm.ptr<ptr<i8>>
    %184 = llvm.call @omTensorListCreate(%92, %89, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %184 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_in_sig : !llvm.ptr<array<142 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<142 x i8>> to !llvm.ptr<i8>
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

