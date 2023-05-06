module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 2 , 1 , 2] , \22name\22 : \22v0_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i32\22 , \22dims\22 : [1 , 2 , 1 , 2] , \22name\22 : \22v2_0\22 }\0A ,    { \22type\22 : \22i64\22 , \22dims\22 : [2 , 2 , 1 , 2] , \22name\22 : \22v3_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.mlir.global internal constant @constant_8(dense<[[[[6]], [[3]]], [[[7]], [[5]]]]> : tensor<2x2x1x1xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<2 x array<2 x array<1 x array<1 x i32>>>>
  llvm.mlir.global internal constant @constant_3(dense<[2, 2, 1, 2]> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.mlir.global internal constant @constant_2(dense<-1> : tensor<i64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i64>
  llvm.mlir.global internal constant @constant_1(dense<[2, 2, 1, 2]> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>)> attributes {input_names = ["v0_0"], llvm.emit_c_interface, output_names = ["v2_0", "v3_0"]} {
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
    %12 = llvm.mlir.constant(1 : i64) : i64
    %13 = llvm.mlir.constant(0 : index) : i64
    %14 = llvm.mlir.addressof @constant_1 : !llvm.ptr<array<4 x i64>>
    %15 = llvm.bitcast %14 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %16 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %17 = llvm.insertvalue %15, %16[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %18 = llvm.insertvalue %15, %17[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %19 = llvm.mlir.constant(0 : index) : i64
    %20 = llvm.insertvalue %19, %18[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %21 = llvm.mlir.constant(4 : index) : i64
    %22 = llvm.insertvalue %21, %20[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %23 = llvm.mlir.constant(1 : index) : i64
    %24 = llvm.insertvalue %23, %22[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %25 = llvm.mlir.addressof @constant_2 : !llvm.ptr<array<1 x i64>>
    %26 = llvm.bitcast %25 : !llvm.ptr<array<1 x i64>> to !llvm.ptr<i64>
    %27 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64)>
    %28 = llvm.insertvalue %26, %27[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %29 = llvm.insertvalue %26, %28[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %30 = llvm.mlir.constant(0 : index) : i64
    %31 = llvm.insertvalue %30, %29[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %32 = llvm.mlir.addressof @constant_3 : !llvm.ptr<array<4 x i64>>
    %33 = llvm.bitcast %32 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %34 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %35 = llvm.insertvalue %33, %34[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %36 = llvm.insertvalue %33, %35[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %37 = llvm.mlir.constant(0 : index) : i64
    %38 = llvm.insertvalue %37, %36[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %39 = llvm.mlir.constant(4 : index) : i64
    %40 = llvm.insertvalue %39, %38[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %41 = llvm.mlir.constant(1 : index) : i64
    %42 = llvm.insertvalue %41, %40[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %43 = llvm.mlir.addressof @constant_8 : !llvm.ptr<array<2 x array<2 x array<1 x array<1 x i32>>>>>
    %44 = llvm.bitcast %43 : !llvm.ptr<array<2 x array<2 x array<1 x array<1 x i32>>>>> to !llvm.ptr<i32>
    %45 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %46 = llvm.insertvalue %44, %45[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %47 = llvm.insertvalue %44, %46[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %48 = llvm.mlir.constant(0 : index) : i64
    %49 = llvm.insertvalue %48, %47[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %50 = llvm.mlir.constant(2 : index) : i64
    %51 = llvm.insertvalue %50, %49[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %52 = llvm.mlir.constant(2 : index) : i64
    %53 = llvm.insertvalue %52, %51[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %54 = llvm.mlir.constant(2 : index) : i64
    %55 = llvm.insertvalue %54, %53[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %56 = llvm.mlir.constant(1 : index) : i64
    %57 = llvm.insertvalue %56, %55[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %58 = llvm.mlir.constant(1 : index) : i64
    %59 = llvm.insertvalue %58, %57[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %60 = llvm.mlir.constant(1 : index) : i64
    %61 = llvm.insertvalue %60, %59[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %62 = llvm.mlir.constant(1 : index) : i64
    %63 = llvm.insertvalue %62, %61[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %64 = llvm.mlir.constant(1 : index) : i64
    %65 = llvm.insertvalue %64, %63[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %66 = llvm.mlir.constant(2 : index) : i64
    %67 = llvm.mlir.constant(2 : index) : i64
    %68 = llvm.mlir.constant(1 : index) : i64
    %69 = llvm.mlir.constant(2 : index) : i64
    %70 = llvm.mlir.constant(1 : index) : i64
    %71 = llvm.mlir.constant(2 : index) : i64
    %72 = llvm.mlir.constant(4 : index) : i64
    %73 = llvm.mlir.constant(8 : index) : i64
    %74 = llvm.mlir.null : !llvm.ptr<i32>
    %75 = llvm.getelementptr %74[%73] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %76 = llvm.ptrtoint %75 : !llvm.ptr<i32> to i64
    %77 = llvm.mlir.constant(16 : index) : i64
    %78 = llvm.add %76, %77  : i64
    %79 = llvm.call @malloc(%78) : (i64) -> !llvm.ptr<i8>
    %80 = llvm.bitcast %79 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %81 = llvm.ptrtoint %80 : !llvm.ptr<i32> to i64
    %82 = llvm.mlir.constant(1 : index) : i64
    %83 = llvm.sub %77, %82  : i64
    %84 = llvm.add %81, %83  : i64
    %85 = llvm.urem %84, %77  : i64
    %86 = llvm.sub %84, %85  : i64
    %87 = llvm.inttoptr %86 : i64 to !llvm.ptr<i32>
    %88 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %89 = llvm.insertvalue %80, %88[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %90 = llvm.insertvalue %87, %89[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %91 = llvm.mlir.constant(0 : index) : i64
    %92 = llvm.insertvalue %91, %90[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %93 = llvm.insertvalue %66, %92[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %94 = llvm.insertvalue %67, %93[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %95 = llvm.insertvalue %68, %94[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %96 = llvm.insertvalue %69, %95[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %97 = llvm.insertvalue %72, %96[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %98 = llvm.insertvalue %71, %97[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %99 = llvm.insertvalue %69, %98[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %100 = llvm.insertvalue %70, %99[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %101 = llvm.mlir.constant(0 : index) : i64
    %102 = llvm.mlir.constant(2 : index) : i64
    %103 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%101 : i64)
  ^bb1(%104: i64):  // 2 preds: ^bb0, ^bb11
    %105 = llvm.icmp "slt" %104, %102 : i64
    llvm.cond_br %105, ^bb2, ^bb12
  ^bb2:  // pred: ^bb1
    %106 = llvm.mlir.constant(0 : index) : i64
    %107 = llvm.mlir.constant(2 : index) : i64
    %108 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%106 : i64)
  ^bb3(%109: i64):  // 2 preds: ^bb2, ^bb10
    %110 = llvm.icmp "slt" %109, %107 : i64
    llvm.cond_br %110, ^bb4, ^bb11
  ^bb4:  // pred: ^bb3
    %111 = llvm.mlir.constant(0 : index) : i64
    %112 = llvm.mlir.constant(1 : index) : i64
    %113 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%111 : i64)
  ^bb5(%114: i64):  // 2 preds: ^bb4, ^bb9
    %115 = llvm.icmp "slt" %114, %112 : i64
    llvm.cond_br %115, ^bb6, ^bb10
  ^bb6:  // pred: ^bb5
    %116 = llvm.mlir.constant(0 : index) : i64
    %117 = llvm.mlir.constant(2 : index) : i64
    %118 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%116 : i64)
  ^bb7(%119: i64):  // 2 preds: ^bb6, ^bb8
    %120 = llvm.icmp "slt" %119, %117 : i64
    llvm.cond_br %120, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %121 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %122 = llvm.mlir.constant(4 : index) : i64
    %123 = llvm.mul %13, %122  : i64
    %124 = llvm.mlir.constant(2 : index) : i64
    %125 = llvm.mul %109, %124  : i64
    %126 = llvm.add %123, %125  : i64
    %127 = llvm.mlir.constant(2 : index) : i64
    %128 = llvm.mul %114, %127  : i64
    %129 = llvm.add %126, %128  : i64
    %130 = llvm.add %129, %119  : i64
    %131 = llvm.getelementptr %121[%130] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %132 = llvm.load %131 : !llvm.ptr<i32>
    %133 = llvm.extractvalue %65[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %134 = llvm.mlir.constant(2 : index) : i64
    %135 = llvm.mul %104, %134  : i64
    %136 = llvm.add %135, %109  : i64
    %137 = llvm.add %136, %114  : i64
    %138 = llvm.add %137, %13  : i64
    %139 = llvm.getelementptr %133[%138] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %140 = llvm.load %139 : !llvm.ptr<i32>
    %141 = llvm.icmp "sgt" %132, %140 : i32
    %142 = llvm.select %141, %132, %140 : i1, i32
    %143 = llvm.extractvalue %100[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %144 = llvm.mlir.constant(4 : index) : i64
    %145 = llvm.mul %104, %144  : i64
    %146 = llvm.mlir.constant(2 : index) : i64
    %147 = llvm.mul %109, %146  : i64
    %148 = llvm.add %145, %147  : i64
    %149 = llvm.mlir.constant(2 : index) : i64
    %150 = llvm.mul %114, %149  : i64
    %151 = llvm.add %148, %150  : i64
    %152 = llvm.add %151, %119  : i64
    %153 = llvm.getelementptr %143[%152] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %142, %153 : !llvm.ptr<i32>
    %154 = llvm.add %119, %118  : i64
    llvm.br ^bb7(%154 : i64)
  ^bb9:  // pred: ^bb7
    %155 = llvm.add %114, %113  : i64
    llvm.br ^bb5(%155 : i64)
  ^bb10:  // pred: ^bb5
    %156 = llvm.add %109, %108  : i64
    llvm.br ^bb3(%156 : i64)
  ^bb11:  // pred: ^bb3
    %157 = llvm.add %104, %103  : i64
    llvm.br ^bb1(%157 : i64)
  ^bb12:  // pred: ^bb1
    %158 = llvm.mlir.constant(1 : index) : i64
    %159 = llvm.mlir.constant(2 : index) : i64
    %160 = llvm.mlir.constant(1 : index) : i64
    %161 = llvm.mlir.constant(2 : index) : i64
    %162 = llvm.mlir.constant(1 : index) : i64
    %163 = llvm.mlir.constant(2 : index) : i64
    %164 = llvm.mlir.constant(4 : index) : i64
    %165 = llvm.mlir.constant(4 : index) : i64
    %166 = llvm.mlir.null : !llvm.ptr<i32>
    %167 = llvm.getelementptr %166[%165] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %168 = llvm.ptrtoint %167 : !llvm.ptr<i32> to i64
    %169 = llvm.mlir.constant(16 : index) : i64
    %170 = llvm.add %168, %169  : i64
    %171 = llvm.call @malloc(%170) : (i64) -> !llvm.ptr<i8>
    %172 = llvm.bitcast %171 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %173 = llvm.ptrtoint %172 : !llvm.ptr<i32> to i64
    %174 = llvm.mlir.constant(1 : index) : i64
    %175 = llvm.sub %169, %174  : i64
    %176 = llvm.add %173, %175  : i64
    %177 = llvm.urem %176, %169  : i64
    %178 = llvm.sub %176, %177  : i64
    %179 = llvm.inttoptr %178 : i64 to !llvm.ptr<i32>
    %180 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %181 = llvm.insertvalue %172, %180[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %182 = llvm.insertvalue %179, %181[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %183 = llvm.mlir.constant(0 : index) : i64
    %184 = llvm.insertvalue %183, %182[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %185 = llvm.insertvalue %158, %184[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %186 = llvm.insertvalue %159, %185[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %187 = llvm.insertvalue %160, %186[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %188 = llvm.insertvalue %161, %187[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %189 = llvm.insertvalue %164, %188[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %190 = llvm.insertvalue %163, %189[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %191 = llvm.insertvalue %161, %190[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %192 = llvm.insertvalue %162, %191[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %193 = llvm.mlir.constant(0 : index) : i64
    %194 = llvm.mlir.constant(1 : index) : i64
    %195 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%193 : i64)
  ^bb13(%196: i64):  // 2 preds: ^bb12, ^bb23
    %197 = llvm.icmp "slt" %196, %194 : i64
    llvm.cond_br %197, ^bb14, ^bb24
  ^bb14:  // pred: ^bb13
    %198 = llvm.mlir.constant(0 : index) : i64
    %199 = llvm.mlir.constant(2 : index) : i64
    %200 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb15(%198 : i64)
  ^bb15(%201: i64):  // 2 preds: ^bb14, ^bb22
    %202 = llvm.icmp "slt" %201, %199 : i64
    llvm.cond_br %202, ^bb16, ^bb23
  ^bb16:  // pred: ^bb15
    %203 = llvm.mlir.constant(0 : index) : i64
    %204 = llvm.mlir.constant(1 : index) : i64
    %205 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb17(%203 : i64)
  ^bb17(%206: i64):  // 2 preds: ^bb16, ^bb21
    %207 = llvm.icmp "slt" %206, %204 : i64
    llvm.cond_br %207, ^bb18, ^bb22
  ^bb18:  // pred: ^bb17
    %208 = llvm.mlir.constant(0 : index) : i64
    %209 = llvm.mlir.constant(2 : index) : i64
    %210 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%208 : i64)
  ^bb19(%211: i64):  // 2 preds: ^bb18, ^bb20
    %212 = llvm.icmp "slt" %211, %209 : i64
    llvm.cond_br %212, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %213 = llvm.extractvalue %100[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %214 = llvm.mlir.constant(4 : index) : i64
    %215 = llvm.mul %196, %214  : i64
    %216 = llvm.mlir.constant(2 : index) : i64
    %217 = llvm.mul %201, %216  : i64
    %218 = llvm.add %215, %217  : i64
    %219 = llvm.mlir.constant(2 : index) : i64
    %220 = llvm.mul %206, %219  : i64
    %221 = llvm.add %218, %220  : i64
    %222 = llvm.add %221, %211  : i64
    %223 = llvm.getelementptr %213[%222] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %224 = llvm.load %223 : !llvm.ptr<i32>
    %225 = llvm.extractvalue %192[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %226 = llvm.mlir.constant(4 : index) : i64
    %227 = llvm.mul %196, %226  : i64
    %228 = llvm.mlir.constant(2 : index) : i64
    %229 = llvm.mul %201, %228  : i64
    %230 = llvm.add %227, %229  : i64
    %231 = llvm.mlir.constant(2 : index) : i64
    %232 = llvm.mul %206, %231  : i64
    %233 = llvm.add %230, %232  : i64
    %234 = llvm.add %233, %211  : i64
    %235 = llvm.getelementptr %225[%234] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %224, %235 : !llvm.ptr<i32>
    %236 = llvm.add %211, %210  : i64
    llvm.br ^bb19(%236 : i64)
  ^bb21:  // pred: ^bb19
    %237 = llvm.add %206, %205  : i64
    llvm.br ^bb17(%237 : i64)
  ^bb22:  // pred: ^bb17
    %238 = llvm.add %201, %200  : i64
    llvm.br ^bb15(%238 : i64)
  ^bb23:  // pred: ^bb15
    %239 = llvm.add %196, %195  : i64
    llvm.br ^bb13(%239 : i64)
  ^bb24:  // pred: ^bb13
    %240 = llvm.mlir.constant(2 : index) : i64
    %241 = llvm.mlir.constant(2 : index) : i64
    %242 = llvm.mlir.constant(1 : index) : i64
    %243 = llvm.mlir.constant(2 : index) : i64
    %244 = llvm.mlir.constant(1 : index) : i64
    %245 = llvm.mlir.constant(2 : index) : i64
    %246 = llvm.mlir.constant(4 : index) : i64
    %247 = llvm.mlir.constant(8 : index) : i64
    %248 = llvm.mlir.null : !llvm.ptr<i64>
    %249 = llvm.getelementptr %248[%247] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %250 = llvm.ptrtoint %249 : !llvm.ptr<i64> to i64
    %251 = llvm.mlir.constant(16 : index) : i64
    %252 = llvm.add %250, %251  : i64
    %253 = llvm.call @malloc(%252) : (i64) -> !llvm.ptr<i8>
    %254 = llvm.bitcast %253 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %255 = llvm.ptrtoint %254 : !llvm.ptr<i64> to i64
    %256 = llvm.mlir.constant(1 : index) : i64
    %257 = llvm.sub %251, %256  : i64
    %258 = llvm.add %255, %257  : i64
    %259 = llvm.urem %258, %251  : i64
    %260 = llvm.sub %258, %259  : i64
    %261 = llvm.inttoptr %260 : i64 to !llvm.ptr<i64>
    %262 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>
    %263 = llvm.insertvalue %254, %262[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %264 = llvm.insertvalue %261, %263[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %265 = llvm.mlir.constant(0 : index) : i64
    %266 = llvm.insertvalue %265, %264[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %267 = llvm.insertvalue %240, %266[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %268 = llvm.insertvalue %241, %267[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %269 = llvm.insertvalue %242, %268[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %270 = llvm.insertvalue %243, %269[3, 3] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %271 = llvm.insertvalue %246, %270[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %272 = llvm.insertvalue %245, %271[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %273 = llvm.insertvalue %243, %272[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %274 = llvm.insertvalue %244, %273[4, 3] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %275 = llvm.mlir.constant(0 : index) : i64
    %276 = llvm.mlir.constant(2 : index) : i64
    %277 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb25(%275 : i64)
  ^bb25(%278: i64):  // 2 preds: ^bb24, ^bb35
    %279 = llvm.icmp "slt" %278, %276 : i64
    llvm.cond_br %279, ^bb26, ^bb36
  ^bb26:  // pred: ^bb25
    %280 = llvm.mlir.constant(0 : index) : i64
    %281 = llvm.mlir.constant(2 : index) : i64
    %282 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb27(%280 : i64)
  ^bb27(%283: i64):  // 2 preds: ^bb26, ^bb34
    %284 = llvm.icmp "slt" %283, %281 : i64
    llvm.cond_br %284, ^bb28, ^bb35
  ^bb28:  // pred: ^bb27
    %285 = llvm.mlir.constant(0 : index) : i64
    %286 = llvm.mlir.constant(1 : index) : i64
    %287 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb29(%285 : i64)
  ^bb29(%288: i64):  // 2 preds: ^bb28, ^bb33
    %289 = llvm.icmp "slt" %288, %286 : i64
    llvm.cond_br %289, ^bb30, ^bb34
  ^bb30:  // pred: ^bb29
    %290 = llvm.mlir.constant(0 : index) : i64
    %291 = llvm.mlir.constant(2 : index) : i64
    %292 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb31(%290 : i64)
  ^bb31(%293: i64):  // 2 preds: ^bb30, ^bb32
    %294 = llvm.icmp "slt" %293, %291 : i64
    llvm.cond_br %294, ^bb32, ^bb33
  ^bb32:  // pred: ^bb31
    %295 = llvm.extractvalue %100[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %296 = llvm.mlir.constant(4 : index) : i64
    %297 = llvm.mul %278, %296  : i64
    %298 = llvm.mlir.constant(2 : index) : i64
    %299 = llvm.mul %283, %298  : i64
    %300 = llvm.add %297, %299  : i64
    %301 = llvm.mlir.constant(2 : index) : i64
    %302 = llvm.mul %288, %301  : i64
    %303 = llvm.add %300, %302  : i64
    %304 = llvm.add %303, %293  : i64
    %305 = llvm.getelementptr %295[%304] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %306 = llvm.load %305 : !llvm.ptr<i32>
    %307 = llvm.sext %306 : i32 to i64
    %308 = llvm.extractvalue %274[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %309 = llvm.mlir.constant(4 : index) : i64
    %310 = llvm.mul %278, %309  : i64
    %311 = llvm.mlir.constant(2 : index) : i64
    %312 = llvm.mul %283, %311  : i64
    %313 = llvm.add %310, %312  : i64
    %314 = llvm.mlir.constant(2 : index) : i64
    %315 = llvm.mul %288, %314  : i64
    %316 = llvm.add %313, %315  : i64
    %317 = llvm.add %316, %293  : i64
    %318 = llvm.getelementptr %308[%317] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %307, %318 : !llvm.ptr<i64>
    %319 = llvm.add %293, %292  : i64
    llvm.br ^bb31(%319 : i64)
  ^bb33:  // pred: ^bb31
    %320 = llvm.add %288, %287  : i64
    llvm.br ^bb29(%320 : i64)
  ^bb34:  // pred: ^bb29
    %321 = llvm.add %283, %282  : i64
    llvm.br ^bb27(%321 : i64)
  ^bb35:  // pred: ^bb27
    %322 = llvm.add %278, %277  : i64
    llvm.br ^bb25(%322 : i64)
  ^bb36:  // pred: ^bb25
    %323 = llvm.mlir.constant(4 : index) : i64
    %324 = llvm.mlir.constant(1 : index) : i64
    %325 = llvm.mlir.null : !llvm.ptr<i64>
    %326 = llvm.getelementptr %325[%323] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %327 = llvm.ptrtoint %326 : !llvm.ptr<i64> to i64
    %328 = llvm.mlir.constant(16 : index) : i64
    %329 = llvm.add %327, %328  : i64
    %330 = llvm.call @malloc(%329) : (i64) -> !llvm.ptr<i8>
    %331 = llvm.bitcast %330 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %332 = llvm.ptrtoint %331 : !llvm.ptr<i64> to i64
    %333 = llvm.mlir.constant(1 : index) : i64
    %334 = llvm.sub %328, %333  : i64
    %335 = llvm.add %332, %334  : i64
    %336 = llvm.urem %335, %328  : i64
    %337 = llvm.sub %335, %336  : i64
    %338 = llvm.inttoptr %337 : i64 to !llvm.ptr<i64>
    %339 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %340 = llvm.insertvalue %331, %339[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %341 = llvm.insertvalue %338, %340[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %342 = llvm.mlir.constant(0 : index) : i64
    %343 = llvm.insertvalue %342, %341[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %344 = llvm.insertvalue %323, %343[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %345 = llvm.insertvalue %324, %344[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %346 = llvm.mlir.constant(0 : index) : i64
    %347 = llvm.mlir.constant(4 : index) : i64
    %348 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb37(%346 : i64)
  ^bb37(%349: i64):  // 2 preds: ^bb36, ^bb38
    %350 = llvm.icmp "slt" %349, %347 : i64
    llvm.cond_br %350, ^bb38, ^bb39
  ^bb38:  // pred: ^bb37
    %351 = llvm.extractvalue %345[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %352 = llvm.getelementptr %351[%349] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %12, %352 : !llvm.ptr<i64>
    %353 = llvm.add %349, %348  : i64
    llvm.br ^bb37(%353 : i64)
  ^bb39:  // pred: ^bb37
    %354 = llvm.mlir.constant(4 : index) : i64
    %355 = llvm.mlir.constant(1 : index) : i64
    %356 = llvm.mlir.null : !llvm.ptr<i64>
    %357 = llvm.getelementptr %356[%354] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %358 = llvm.ptrtoint %357 : !llvm.ptr<i64> to i64
    %359 = llvm.mlir.constant(16 : index) : i64
    %360 = llvm.add %358, %359  : i64
    %361 = llvm.call @malloc(%360) : (i64) -> !llvm.ptr<i8>
    %362 = llvm.bitcast %361 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %363 = llvm.ptrtoint %362 : !llvm.ptr<i64> to i64
    %364 = llvm.mlir.constant(1 : index) : i64
    %365 = llvm.sub %359, %364  : i64
    %366 = llvm.add %363, %365  : i64
    %367 = llvm.urem %366, %359  : i64
    %368 = llvm.sub %366, %367  : i64
    %369 = llvm.inttoptr %368 : i64 to !llvm.ptr<i64>
    %370 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %371 = llvm.insertvalue %362, %370[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %372 = llvm.insertvalue %369, %371[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %373 = llvm.mlir.constant(0 : index) : i64
    %374 = llvm.insertvalue %373, %372[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %375 = llvm.insertvalue %354, %374[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %376 = llvm.insertvalue %355, %375[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %377 = llvm.mlir.constant(0 : index) : i64
    %378 = llvm.mlir.constant(4 : index) : i64
    %379 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb40(%377 : i64)
  ^bb40(%380: i64):  // 2 preds: ^bb39, ^bb41
    %381 = llvm.icmp "slt" %380, %378 : i64
    llvm.cond_br %381, ^bb41, ^bb42
  ^bb41:  // pred: ^bb40
    %382 = llvm.extractvalue %345[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %383 = llvm.getelementptr %382[%380] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %384 = llvm.load %383 : !llvm.ptr<i64>
    %385 = llvm.extractvalue %31[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %386 = llvm.load %385 : !llvm.ptr<i64>
    %387 = llvm.mul %384, %386  : i64
    %388 = llvm.extractvalue %376[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %389 = llvm.getelementptr %388[%380] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %387, %389 : !llvm.ptr<i64>
    %390 = llvm.add %380, %379  : i64
    llvm.br ^bb40(%390 : i64)
  ^bb42:  // pred: ^bb40
    %391 = llvm.mlir.constant(4 : index) : i64
    %392 = llvm.mlir.constant(1 : index) : i64
    %393 = llvm.mlir.null : !llvm.ptr<i1>
    %394 = llvm.getelementptr %393[%391] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %395 = llvm.ptrtoint %394 : !llvm.ptr<i1> to i64
    %396 = llvm.mlir.constant(16 : index) : i64
    %397 = llvm.add %395, %396  : i64
    %398 = llvm.call @malloc(%397) : (i64) -> !llvm.ptr<i8>
    %399 = llvm.bitcast %398 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %400 = llvm.ptrtoint %399 : !llvm.ptr<i1> to i64
    %401 = llvm.mlir.constant(1 : index) : i64
    %402 = llvm.sub %396, %401  : i64
    %403 = llvm.add %400, %402  : i64
    %404 = llvm.urem %403, %396  : i64
    %405 = llvm.sub %403, %404  : i64
    %406 = llvm.inttoptr %405 : i64 to !llvm.ptr<i1>
    %407 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %408 = llvm.insertvalue %399, %407[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %409 = llvm.insertvalue %406, %408[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %410 = llvm.mlir.constant(0 : index) : i64
    %411 = llvm.insertvalue %410, %409[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %412 = llvm.insertvalue %391, %411[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %413 = llvm.insertvalue %392, %412[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %414 = llvm.mlir.constant(0 : index) : i64
    %415 = llvm.mlir.constant(4 : index) : i64
    %416 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb43(%414 : i64)
  ^bb43(%417: i64):  // 2 preds: ^bb42, ^bb44
    %418 = llvm.icmp "slt" %417, %415 : i64
    llvm.cond_br %418, ^bb44, ^bb45
  ^bb44:  // pred: ^bb43
    %419 = llvm.extractvalue %24[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %420 = llvm.getelementptr %419[%417] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %421 = llvm.load %420 : !llvm.ptr<i64>
    %422 = llvm.extractvalue %376[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %423 = llvm.getelementptr %422[%417] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %424 = llvm.load %423 : !llvm.ptr<i64>
    %425 = llvm.icmp "eq" %421, %424 : i64
    %426 = llvm.extractvalue %413[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %427 = llvm.getelementptr %426[%417] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %425, %427 : !llvm.ptr<i1>
    %428 = llvm.add %417, %416  : i64
    llvm.br ^bb43(%428 : i64)
  ^bb45:  // pred: ^bb43
    %429 = llvm.mlir.constant(4 : index) : i64
    %430 = llvm.mlir.constant(1 : index) : i64
    %431 = llvm.mlir.null : !llvm.ptr<i64>
    %432 = llvm.getelementptr %431[%429] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %433 = llvm.ptrtoint %432 : !llvm.ptr<i64> to i64
    %434 = llvm.mlir.constant(16 : index) : i64
    %435 = llvm.add %433, %434  : i64
    %436 = llvm.call @malloc(%435) : (i64) -> !llvm.ptr<i8>
    %437 = llvm.bitcast %436 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %438 = llvm.ptrtoint %437 : !llvm.ptr<i64> to i64
    %439 = llvm.mlir.constant(1 : index) : i64
    %440 = llvm.sub %434, %439  : i64
    %441 = llvm.add %438, %440  : i64
    %442 = llvm.urem %441, %434  : i64
    %443 = llvm.sub %441, %442  : i64
    %444 = llvm.inttoptr %443 : i64 to !llvm.ptr<i64>
    %445 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %446 = llvm.insertvalue %437, %445[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %447 = llvm.insertvalue %444, %446[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %448 = llvm.mlir.constant(0 : index) : i64
    %449 = llvm.insertvalue %448, %447[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %450 = llvm.insertvalue %429, %449[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %451 = llvm.insertvalue %430, %450[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %452 = llvm.mlir.constant(0 : index) : i64
    %453 = llvm.mlir.constant(4 : index) : i64
    %454 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb46(%452 : i64)
  ^bb46(%455: i64):  // 2 preds: ^bb45, ^bb47
    %456 = llvm.icmp "slt" %455, %453 : i64
    llvm.cond_br %456, ^bb47, ^bb48
  ^bb47:  // pred: ^bb46
    %457 = llvm.extractvalue %413[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %458 = llvm.getelementptr %457[%455] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %459 = llvm.load %458 : !llvm.ptr<i1>
    %460 = llvm.extractvalue %345[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %461 = llvm.getelementptr %460[%455] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %462 = llvm.load %461 : !llvm.ptr<i64>
    %463 = llvm.extractvalue %42[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %464 = llvm.getelementptr %463[%455] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %465 = llvm.load %464 : !llvm.ptr<i64>
    %466 = llvm.select %459, %462, %465 : i1, i64
    %467 = llvm.extractvalue %451[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %468 = llvm.getelementptr %467[%455] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %466, %468 : !llvm.ptr<i64>
    %469 = llvm.add %455, %454  : i64
    llvm.br ^bb46(%469 : i64)
  ^bb48:  // pred: ^bb46
    %470 = llvm.mlir.constant(2 : index) : i64
    %471 = llvm.mlir.constant(2 : index) : i64
    %472 = llvm.mlir.constant(1 : index) : i64
    %473 = llvm.mlir.constant(2 : index) : i64
    %474 = llvm.mlir.constant(1 : index) : i64
    %475 = llvm.mlir.constant(2 : index) : i64
    %476 = llvm.mlir.constant(4 : index) : i64
    %477 = llvm.mlir.constant(8 : index) : i64
    %478 = llvm.mlir.null : !llvm.ptr<i64>
    %479 = llvm.getelementptr %478[%477] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %480 = llvm.ptrtoint %479 : !llvm.ptr<i64> to i64
    %481 = llvm.mlir.constant(16 : index) : i64
    %482 = llvm.add %480, %481  : i64
    %483 = llvm.call @malloc(%482) : (i64) -> !llvm.ptr<i8>
    %484 = llvm.bitcast %483 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %485 = llvm.ptrtoint %484 : !llvm.ptr<i64> to i64
    %486 = llvm.mlir.constant(1 : index) : i64
    %487 = llvm.sub %481, %486  : i64
    %488 = llvm.add %485, %487  : i64
    %489 = llvm.urem %488, %481  : i64
    %490 = llvm.sub %488, %489  : i64
    %491 = llvm.inttoptr %490 : i64 to !llvm.ptr<i64>
    %492 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>
    %493 = llvm.insertvalue %484, %492[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %494 = llvm.insertvalue %491, %493[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %495 = llvm.mlir.constant(0 : index) : i64
    %496 = llvm.insertvalue %495, %494[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %497 = llvm.insertvalue %470, %496[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %498 = llvm.insertvalue %471, %497[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %499 = llvm.insertvalue %472, %498[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %500 = llvm.insertvalue %473, %499[3, 3] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %501 = llvm.insertvalue %476, %500[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %502 = llvm.insertvalue %475, %501[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %503 = llvm.insertvalue %473, %502[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %504 = llvm.insertvalue %474, %503[4, 3] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %505 = llvm.mlir.constant(0 : index) : i64
    %506 = llvm.mlir.constant(2 : index) : i64
    %507 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb49(%505 : i64)
  ^bb49(%508: i64):  // 2 preds: ^bb48, ^bb59
    %509 = llvm.icmp "slt" %508, %506 : i64
    llvm.cond_br %509, ^bb50, ^bb60
  ^bb50:  // pred: ^bb49
    %510 = llvm.mlir.constant(0 : index) : i64
    %511 = llvm.mlir.constant(2 : index) : i64
    %512 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb51(%510 : i64)
  ^bb51(%513: i64):  // 2 preds: ^bb50, ^bb58
    %514 = llvm.icmp "slt" %513, %511 : i64
    llvm.cond_br %514, ^bb52, ^bb59
  ^bb52:  // pred: ^bb51
    %515 = llvm.mlir.constant(0 : index) : i64
    %516 = llvm.mlir.constant(1 : index) : i64
    %517 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb53(%515 : i64)
  ^bb53(%518: i64):  // 2 preds: ^bb52, ^bb57
    %519 = llvm.icmp "slt" %518, %516 : i64
    llvm.cond_br %519, ^bb54, ^bb58
  ^bb54:  // pred: ^bb53
    %520 = llvm.mlir.constant(0 : index) : i64
    %521 = llvm.mlir.constant(2 : index) : i64
    %522 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb55(%520 : i64)
  ^bb55(%523: i64):  // 2 preds: ^bb54, ^bb56
    %524 = llvm.icmp "slt" %523, %521 : i64
    llvm.cond_br %524, ^bb56, ^bb57
  ^bb56:  // pred: ^bb55
    %525 = llvm.extractvalue %274[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %526 = llvm.mlir.constant(4 : index) : i64
    %527 = llvm.mul %508, %526  : i64
    %528 = llvm.mlir.constant(2 : index) : i64
    %529 = llvm.mul %513, %528  : i64
    %530 = llvm.add %527, %529  : i64
    %531 = llvm.mlir.constant(2 : index) : i64
    %532 = llvm.mul %13, %531  : i64
    %533 = llvm.add %530, %532  : i64
    %534 = llvm.add %533, %523  : i64
    %535 = llvm.getelementptr %525[%534] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %536 = llvm.load %535 : !llvm.ptr<i64>
    %537 = llvm.extractvalue %504[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %538 = llvm.mlir.constant(4 : index) : i64
    %539 = llvm.mul %508, %538  : i64
    %540 = llvm.mlir.constant(2 : index) : i64
    %541 = llvm.mul %513, %540  : i64
    %542 = llvm.add %539, %541  : i64
    %543 = llvm.mlir.constant(2 : index) : i64
    %544 = llvm.mul %518, %543  : i64
    %545 = llvm.add %542, %544  : i64
    %546 = llvm.add %545, %523  : i64
    %547 = llvm.getelementptr %537[%546] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %536, %547 : !llvm.ptr<i64>
    %548 = llvm.add %523, %522  : i64
    llvm.br ^bb55(%548 : i64)
  ^bb57:  // pred: ^bb55
    %549 = llvm.add %518, %517  : i64
    llvm.br ^bb53(%549 : i64)
  ^bb58:  // pred: ^bb53
    %550 = llvm.add %513, %512  : i64
    llvm.br ^bb51(%550 : i64)
  ^bb59:  // pred: ^bb51
    %551 = llvm.add %508, %507  : i64
    llvm.br ^bb49(%551 : i64)
  ^bb60:  // pred: ^bb49
    %552 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>)>
    %553 = llvm.insertvalue %192, %552[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %554 = llvm.insertvalue %504, %553[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>)> 
    llvm.return %554 : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) attributes {input_names = ["v0_0"], llvm.emit_c_interface, output_names = ["v2_0", "v3_0"]} {
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
    %12 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>)>
    llvm.store %12, %arg0 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>)>>
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
    llvm.call @_mlir_ciface_main_graph(%2, %6) : (!llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) -> ()
    %44 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %45 = llvm.extractvalue %44[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %46 = llvm.extractvalue %44[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %47 = llvm.mlir.constant(2 : i64) : i64
    %48 = llvm.mlir.constant(16 : i64) : i64
    %49 = llvm.call @malloc(%48) : (i64) -> !llvm.ptr<i8>
    %50 = llvm.bitcast %49 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %51 = llvm.mlir.constant(4 : i64) : i64
    %52 = llvm.call @omTensorCreateUntyped(%51) : (i64) -> !llvm.ptr<i8>
    %53 = llvm.mlir.constant(1 : i64) : i64
    %54 = llvm.extractvalue %45[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %55 = llvm.bitcast %54 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %56 = llvm.extractvalue %45[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %57 = llvm.bitcast %56 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%52, %53, %55, %57) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %58 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%52, %58) : (!llvm.ptr<i8>, i64) -> ()
    %59 = llvm.call @omTensorGetShape(%52) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %60 = llvm.call @omTensorGetStrides(%52) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %61 = llvm.mlir.constant(0 : i64) : i64
    %62 = llvm.extractvalue %45[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %63 = llvm.getelementptr %59[%61] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %62, %63 : !llvm.ptr<i64>
    %64 = llvm.extractvalue %45[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %65 = llvm.getelementptr %60[%61] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %64, %65 : !llvm.ptr<i64>
    %66 = llvm.mlir.constant(1 : i64) : i64
    %67 = llvm.extractvalue %45[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %68 = llvm.getelementptr %59[%66] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %67, %68 : !llvm.ptr<i64>
    %69 = llvm.extractvalue %45[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %70 = llvm.getelementptr %60[%66] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %69, %70 : !llvm.ptr<i64>
    %71 = llvm.mlir.constant(2 : i64) : i64
    %72 = llvm.extractvalue %45[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %73 = llvm.getelementptr %59[%71] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %72, %73 : !llvm.ptr<i64>
    %74 = llvm.extractvalue %45[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %75 = llvm.getelementptr %60[%71] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %74, %75 : !llvm.ptr<i64>
    %76 = llvm.mlir.constant(3 : i64) : i64
    %77 = llvm.extractvalue %45[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %78 = llvm.getelementptr %59[%76] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %77, %78 : !llvm.ptr<i64>
    %79 = llvm.extractvalue %45[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %80 = llvm.getelementptr %60[%76] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %79, %80 : !llvm.ptr<i64>
    %81 = llvm.mlir.constant(0 : i64) : i64
    %82 = llvm.getelementptr %50[%81] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %52, %82 : !llvm.ptr<ptr<i8>>
    %83 = llvm.mlir.constant(4 : i64) : i64
    %84 = llvm.call @omTensorCreateUntyped(%83) : (i64) -> !llvm.ptr<i8>
    %85 = llvm.mlir.constant(1 : i64) : i64
    %86 = llvm.extractvalue %46[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %87 = llvm.bitcast %86 : !llvm.ptr<i64> to !llvm.ptr<i8>
    %88 = llvm.extractvalue %46[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %89 = llvm.bitcast %88 : !llvm.ptr<i64> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%84, %85, %87, %89) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %90 = llvm.mlir.constant(7 : i64) : i64
    llvm.call @omTensorSetDataType(%84, %90) : (!llvm.ptr<i8>, i64) -> ()
    %91 = llvm.call @omTensorGetShape(%84) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %92 = llvm.call @omTensorGetStrides(%84) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %93 = llvm.mlir.constant(0 : i64) : i64
    %94 = llvm.extractvalue %46[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %95 = llvm.getelementptr %91[%93] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %94, %95 : !llvm.ptr<i64>
    %96 = llvm.extractvalue %46[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %97 = llvm.getelementptr %92[%93] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %96, %97 : !llvm.ptr<i64>
    %98 = llvm.mlir.constant(1 : i64) : i64
    %99 = llvm.extractvalue %46[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %100 = llvm.getelementptr %91[%98] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %99, %100 : !llvm.ptr<i64>
    %101 = llvm.extractvalue %46[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %102 = llvm.getelementptr %92[%98] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %101, %102 : !llvm.ptr<i64>
    %103 = llvm.mlir.constant(2 : i64) : i64
    %104 = llvm.extractvalue %46[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %105 = llvm.getelementptr %91[%103] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %104, %105 : !llvm.ptr<i64>
    %106 = llvm.extractvalue %46[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %107 = llvm.getelementptr %92[%103] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %106, %107 : !llvm.ptr<i64>
    %108 = llvm.mlir.constant(3 : i64) : i64
    %109 = llvm.extractvalue %46[3, 3] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %110 = llvm.getelementptr %91[%108] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %109, %110 : !llvm.ptr<i64>
    %111 = llvm.extractvalue %46[4, 3] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %112 = llvm.getelementptr %92[%108] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %111, %112 : !llvm.ptr<i64>
    %113 = llvm.mlir.constant(1 : i64) : i64
    %114 = llvm.getelementptr %50[%113] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %84, %114 : !llvm.ptr<ptr<i8>>
    %115 = llvm.call @omTensorListCreate(%50, %47, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %115 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<141 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<141 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

