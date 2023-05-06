module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1] , \22name\22 : \22v3_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i32\22 , \22dims\22 : [2 , 2 , 1] , \22name\22 : \22v0_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 2 , 2 , 1] , \22name\22 : \22v6_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.mlir.global internal constant @constant_7(dense<[[[[4], [5]], [[6], [7]]]]> : tensor<1x2x2x1xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x array<2 x array<2 x array<1 x i32>>>>
  llvm.mlir.global internal constant @constant_2(dense<1> : tensor<i32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i32>
  llvm.mlir.global internal constant @constant_1(dense<-1> : tensor<i32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i32>
  llvm.mlir.global internal constant @constant_0(dense<[[[[8], [10]], [[12], [14]]]]> : tensor<1x2x2x1xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x array<2 x array<2 x array<1 x i32>>>>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> attributes {input_names = ["v3_0"], llvm.emit_c_interface, output_names = ["v0_0", "v6_0"]} {
    %0 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %1 = llvm.insertvalue %arg0, %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %2 = llvm.insertvalue %arg1, %1[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %3 = llvm.insertvalue %arg2, %2[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %4 = llvm.insertvalue %arg3, %3[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %5 = llvm.insertvalue %arg4, %4[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %6 = llvm.mlir.constant(2147483647 : i32) : i32
    %7 = llvm.mlir.addressof @constant_0 : !llvm.ptr<array<1 x array<2 x array<2 x array<1 x i32>>>>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<1 x array<2 x array<2 x array<1 x i32>>>>> to !llvm.ptr<i32>
    %9 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %10 = llvm.insertvalue %8, %9[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %11 = llvm.insertvalue %8, %10[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %12 = llvm.mlir.constant(0 : index) : i64
    %13 = llvm.insertvalue %12, %11[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %14 = llvm.mlir.constant(1 : index) : i64
    %15 = llvm.insertvalue %14, %13[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %16 = llvm.mlir.constant(4 : index) : i64
    %17 = llvm.insertvalue %16, %15[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %18 = llvm.mlir.constant(2 : index) : i64
    %19 = llvm.insertvalue %18, %17[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %20 = llvm.mlir.constant(2 : index) : i64
    %21 = llvm.insertvalue %20, %19[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %22 = llvm.mlir.constant(2 : index) : i64
    %23 = llvm.insertvalue %22, %21[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %24 = llvm.mlir.constant(1 : index) : i64
    %25 = llvm.insertvalue %24, %23[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %26 = llvm.mlir.constant(1 : index) : i64
    %27 = llvm.insertvalue %26, %25[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %28 = llvm.mlir.constant(1 : index) : i64
    %29 = llvm.insertvalue %28, %27[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %30 = llvm.mlir.addressof @constant_1 : !llvm.ptr<array<1 x i32>>
    %31 = llvm.bitcast %30 : !llvm.ptr<array<1 x i32>> to !llvm.ptr<i32>
    %32 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64)>
    %33 = llvm.insertvalue %31, %32[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %34 = llvm.insertvalue %31, %33[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %35 = llvm.mlir.constant(0 : index) : i64
    %36 = llvm.insertvalue %35, %34[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %37 = llvm.mlir.addressof @constant_2 : !llvm.ptr<array<1 x i32>>
    %38 = llvm.bitcast %37 : !llvm.ptr<array<1 x i32>> to !llvm.ptr<i32>
    %39 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64)>
    %40 = llvm.insertvalue %38, %39[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %41 = llvm.insertvalue %38, %40[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %42 = llvm.mlir.constant(0 : index) : i64
    %43 = llvm.insertvalue %42, %41[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %44 = llvm.mlir.addressof @constant_7 : !llvm.ptr<array<1 x array<2 x array<2 x array<1 x i32>>>>>
    %45 = llvm.bitcast %44 : !llvm.ptr<array<1 x array<2 x array<2 x array<1 x i32>>>>> to !llvm.ptr<i32>
    %46 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %47 = llvm.insertvalue %45, %46[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %48 = llvm.insertvalue %45, %47[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %49 = llvm.mlir.constant(0 : index) : i64
    %50 = llvm.insertvalue %49, %48[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %51 = llvm.mlir.constant(1 : index) : i64
    %52 = llvm.insertvalue %51, %50[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %53 = llvm.mlir.constant(4 : index) : i64
    %54 = llvm.insertvalue %53, %52[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %55 = llvm.mlir.constant(2 : index) : i64
    %56 = llvm.insertvalue %55, %54[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %57 = llvm.mlir.constant(2 : index) : i64
    %58 = llvm.insertvalue %57, %56[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %59 = llvm.mlir.constant(2 : index) : i64
    %60 = llvm.insertvalue %59, %58[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %61 = llvm.mlir.constant(1 : index) : i64
    %62 = llvm.insertvalue %61, %60[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %63 = llvm.mlir.constant(1 : index) : i64
    %64 = llvm.insertvalue %63, %62[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %65 = llvm.mlir.constant(1 : index) : i64
    %66 = llvm.insertvalue %65, %64[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %67 = llvm.mlir.constant(1 : index) : i64
    %68 = llvm.mlir.constant(2 : index) : i64
    %69 = llvm.mlir.constant(2 : index) : i64
    %70 = llvm.mlir.constant(1 : index) : i64
    %71 = llvm.mlir.constant(1 : index) : i64
    %72 = llvm.mlir.constant(4 : index) : i64
    %73 = llvm.mlir.constant(4 : index) : i64
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
    %93 = llvm.insertvalue %67, %92[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %94 = llvm.insertvalue %68, %93[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %95 = llvm.insertvalue %69, %94[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %96 = llvm.insertvalue %70, %95[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %97 = llvm.insertvalue %72, %96[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %98 = llvm.insertvalue %69, %97[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %99 = llvm.insertvalue %70, %98[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %100 = llvm.insertvalue %71, %99[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %101 = llvm.mlir.constant(0 : index) : i64
    %102 = llvm.mlir.constant(1 : index) : i64
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
    %112 = llvm.mlir.constant(2 : index) : i64
    %113 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%111 : i64)
  ^bb5(%114: i64):  // 2 preds: ^bb4, ^bb9
    %115 = llvm.icmp "slt" %114, %112 : i64
    llvm.cond_br %115, ^bb6, ^bb10
  ^bb6:  // pred: ^bb5
    %116 = llvm.mlir.constant(0 : index) : i64
    %117 = llvm.mlir.constant(1 : index) : i64
    %118 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%116 : i64)
  ^bb7(%119: i64):  // 2 preds: ^bb6, ^bb8
    %120 = llvm.icmp "slt" %119, %117 : i64
    llvm.cond_br %120, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %121 = llvm.extractvalue %5[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %122 = llvm.getelementptr %121[%119] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %123 = llvm.load %122 : !llvm.ptr<i32>
    %124 = llvm.extractvalue %66[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %125 = llvm.mlir.constant(4 : index) : i64
    %126 = llvm.mul %104, %125  : i64
    %127 = llvm.mlir.constant(2 : index) : i64
    %128 = llvm.mul %109, %127  : i64
    %129 = llvm.add %126, %128  : i64
    %130 = llvm.add %129, %114  : i64
    %131 = llvm.add %130, %119  : i64
    %132 = llvm.getelementptr %124[%131] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %133 = llvm.load %132 : !llvm.ptr<i32>
    %134 = llvm.add %123, %133  : i32
    %135 = llvm.extractvalue %100[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %136 = llvm.mlir.constant(4 : index) : i64
    %137 = llvm.mul %104, %136  : i64
    %138 = llvm.mlir.constant(2 : index) : i64
    %139 = llvm.mul %109, %138  : i64
    %140 = llvm.add %137, %139  : i64
    %141 = llvm.add %140, %114  : i64
    %142 = llvm.add %141, %119  : i64
    %143 = llvm.getelementptr %135[%142] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %134, %143 : !llvm.ptr<i32>
    %144 = llvm.add %119, %118  : i64
    llvm.br ^bb7(%144 : i64)
  ^bb9:  // pred: ^bb7
    %145 = llvm.add %114, %113  : i64
    llvm.br ^bb5(%145 : i64)
  ^bb10:  // pred: ^bb5
    %146 = llvm.add %109, %108  : i64
    llvm.br ^bb3(%146 : i64)
  ^bb11:  // pred: ^bb3
    %147 = llvm.add %104, %103  : i64
    llvm.br ^bb1(%147 : i64)
  ^bb12:  // pred: ^bb1
    %148 = llvm.mlir.constant(2 : index) : i64
    %149 = llvm.mlir.constant(2 : index) : i64
    %150 = llvm.mlir.constant(1 : index) : i64
    %151 = llvm.mlir.constant(1 : index) : i64
    %152 = llvm.mlir.constant(4 : index) : i64
    %153 = llvm.mlir.null : !llvm.ptr<i32>
    %154 = llvm.getelementptr %153[%152] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %155 = llvm.ptrtoint %154 : !llvm.ptr<i32> to i64
    %156 = llvm.mlir.constant(16 : index) : i64
    %157 = llvm.add %155, %156  : i64
    %158 = llvm.call @malloc(%157) : (i64) -> !llvm.ptr<i8>
    %159 = llvm.bitcast %158 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %160 = llvm.ptrtoint %159 : !llvm.ptr<i32> to i64
    %161 = llvm.mlir.constant(1 : index) : i64
    %162 = llvm.sub %156, %161  : i64
    %163 = llvm.add %160, %162  : i64
    %164 = llvm.urem %163, %156  : i64
    %165 = llvm.sub %163, %164  : i64
    %166 = llvm.inttoptr %165 : i64 to !llvm.ptr<i32>
    %167 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>
    %168 = llvm.insertvalue %159, %167[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %169 = llvm.insertvalue %166, %168[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %170 = llvm.mlir.constant(0 : index) : i64
    %171 = llvm.insertvalue %170, %169[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %172 = llvm.insertvalue %148, %171[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %173 = llvm.insertvalue %149, %172[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %174 = llvm.insertvalue %150, %173[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %175 = llvm.insertvalue %149, %174[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %176 = llvm.insertvalue %150, %175[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %177 = llvm.insertvalue %151, %176[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %178 = llvm.mlir.constant(0 : index) : i64
    %179 = llvm.mlir.constant(2 : index) : i64
    %180 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%178 : i64)
  ^bb13(%181: i64):  // 2 preds: ^bb12, ^bb20
    %182 = llvm.icmp "slt" %181, %179 : i64
    llvm.cond_br %182, ^bb14, ^bb21
  ^bb14:  // pred: ^bb13
    %183 = llvm.mlir.constant(0 : index) : i64
    %184 = llvm.mlir.constant(2 : index) : i64
    %185 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb15(%183 : i64)
  ^bb15(%186: i64):  // 2 preds: ^bb14, ^bb19
    %187 = llvm.icmp "slt" %186, %184 : i64
    llvm.cond_br %187, ^bb16, ^bb20
  ^bb16:  // pred: ^bb15
    %188 = llvm.mlir.constant(0 : index) : i64
    %189 = llvm.mlir.constant(1 : index) : i64
    %190 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb17(%188 : i64)
  ^bb17(%191: i64):  // 2 preds: ^bb16, ^bb18
    %192 = llvm.icmp "slt" %191, %189 : i64
    llvm.cond_br %192, ^bb18, ^bb19
  ^bb18:  // pred: ^bb17
    %193 = llvm.extractvalue %177[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %194 = llvm.mlir.constant(2 : index) : i64
    %195 = llvm.mul %181, %194  : i64
    %196 = llvm.add %195, %186  : i64
    %197 = llvm.add %196, %191  : i64
    %198 = llvm.getelementptr %193[%197] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %6, %198 : !llvm.ptr<i32>
    %199 = llvm.add %191, %190  : i64
    llvm.br ^bb17(%199 : i64)
  ^bb19:  // pred: ^bb17
    %200 = llvm.add %186, %185  : i64
    llvm.br ^bb15(%200 : i64)
  ^bb20:  // pred: ^bb15
    %201 = llvm.add %181, %180  : i64
    llvm.br ^bb13(%201 : i64)
  ^bb21:  // pred: ^bb13
    %202 = llvm.mlir.constant(0 : index) : i64
    %203 = llvm.mlir.constant(1 : index) : i64
    %204 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb22(%202 : i64)
  ^bb22(%205: i64):  // 2 preds: ^bb21, ^bb32
    %206 = llvm.icmp "slt" %205, %203 : i64
    llvm.cond_br %206, ^bb23, ^bb33
  ^bb23:  // pred: ^bb22
    %207 = llvm.mlir.constant(0 : index) : i64
    %208 = llvm.mlir.constant(2 : index) : i64
    %209 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb24(%207 : i64)
  ^bb24(%210: i64):  // 2 preds: ^bb23, ^bb31
    %211 = llvm.icmp "slt" %210, %208 : i64
    llvm.cond_br %211, ^bb25, ^bb32
  ^bb25:  // pred: ^bb24
    %212 = llvm.mlir.constant(0 : index) : i64
    %213 = llvm.mlir.constant(2 : index) : i64
    %214 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb26(%212 : i64)
  ^bb26(%215: i64):  // 2 preds: ^bb25, ^bb30
    %216 = llvm.icmp "slt" %215, %213 : i64
    llvm.cond_br %216, ^bb27, ^bb31
  ^bb27:  // pred: ^bb26
    %217 = llvm.mlir.constant(0 : index) : i64
    %218 = llvm.mlir.constant(1 : index) : i64
    %219 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb28(%217 : i64)
  ^bb28(%220: i64):  // 2 preds: ^bb27, ^bb29
    %221 = llvm.icmp "slt" %220, %218 : i64
    llvm.cond_br %221, ^bb29, ^bb30
  ^bb29:  // pred: ^bb28
    %222 = llvm.extractvalue %100[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %223 = llvm.mlir.constant(4 : index) : i64
    %224 = llvm.mul %205, %223  : i64
    %225 = llvm.mlir.constant(2 : index) : i64
    %226 = llvm.mul %210, %225  : i64
    %227 = llvm.add %224, %226  : i64
    %228 = llvm.add %227, %215  : i64
    %229 = llvm.add %228, %220  : i64
    %230 = llvm.getelementptr %222[%229] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %231 = llvm.load %230 : !llvm.ptr<i32>
    %232 = llvm.extractvalue %177[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %233 = llvm.mlir.constant(2 : index) : i64
    %234 = llvm.mul %210, %233  : i64
    %235 = llvm.add %234, %215  : i64
    %236 = llvm.add %235, %220  : i64
    %237 = llvm.getelementptr %232[%236] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %238 = llvm.load %237 : !llvm.ptr<i32>
    %239 = llvm.icmp "slt" %238, %231 : i32
    %240 = llvm.select %239, %238, %231 : i1, i32
    %241 = llvm.extractvalue %177[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %242 = llvm.mlir.constant(2 : index) : i64
    %243 = llvm.mul %210, %242  : i64
    %244 = llvm.add %243, %215  : i64
    %245 = llvm.add %244, %220  : i64
    %246 = llvm.getelementptr %241[%245] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %240, %246 : !llvm.ptr<i32>
    %247 = llvm.add %220, %219  : i64
    llvm.br ^bb28(%247 : i64)
  ^bb30:  // pred: ^bb28
    %248 = llvm.add %215, %214  : i64
    llvm.br ^bb26(%248 : i64)
  ^bb31:  // pred: ^bb26
    %249 = llvm.add %210, %209  : i64
    llvm.br ^bb24(%249 : i64)
  ^bb32:  // pred: ^bb24
    %250 = llvm.add %205, %204  : i64
    llvm.br ^bb22(%250 : i64)
  ^bb33:  // pred: ^bb22
    %251 = llvm.mlir.constant(2 : index) : i64
    %252 = llvm.mlir.constant(2 : index) : i64
    %253 = llvm.mlir.constant(1 : index) : i64
    %254 = llvm.mlir.constant(1 : index) : i64
    %255 = llvm.mlir.constant(4 : index) : i64
    %256 = llvm.mlir.null : !llvm.ptr<i32>
    %257 = llvm.getelementptr %256[%255] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %258 = llvm.ptrtoint %257 : !llvm.ptr<i32> to i64
    %259 = llvm.mlir.constant(16 : index) : i64
    %260 = llvm.add %258, %259  : i64
    %261 = llvm.call @malloc(%260) : (i64) -> !llvm.ptr<i8>
    %262 = llvm.bitcast %261 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %263 = llvm.ptrtoint %262 : !llvm.ptr<i32> to i64
    %264 = llvm.mlir.constant(1 : index) : i64
    %265 = llvm.sub %259, %264  : i64
    %266 = llvm.add %263, %265  : i64
    %267 = llvm.urem %266, %259  : i64
    %268 = llvm.sub %266, %267  : i64
    %269 = llvm.inttoptr %268 : i64 to !llvm.ptr<i32>
    %270 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>
    %271 = llvm.insertvalue %262, %270[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %272 = llvm.insertvalue %269, %271[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %273 = llvm.mlir.constant(0 : index) : i64
    %274 = llvm.insertvalue %273, %272[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %275 = llvm.insertvalue %251, %274[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %276 = llvm.insertvalue %252, %275[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %277 = llvm.insertvalue %253, %276[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %278 = llvm.insertvalue %252, %277[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %279 = llvm.insertvalue %253, %278[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %280 = llvm.insertvalue %254, %279[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %281 = llvm.mlir.constant(0 : index) : i64
    %282 = llvm.mlir.constant(2 : index) : i64
    %283 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb34(%281 : i64)
  ^bb34(%284: i64):  // 2 preds: ^bb33, ^bb41
    %285 = llvm.icmp "slt" %284, %282 : i64
    llvm.cond_br %285, ^bb35, ^bb42
  ^bb35:  // pred: ^bb34
    %286 = llvm.mlir.constant(0 : index) : i64
    %287 = llvm.mlir.constant(2 : index) : i64
    %288 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb36(%286 : i64)
  ^bb36(%289: i64):  // 2 preds: ^bb35, ^bb40
    %290 = llvm.icmp "slt" %289, %287 : i64
    llvm.cond_br %290, ^bb37, ^bb41
  ^bb37:  // pred: ^bb36
    %291 = llvm.mlir.constant(0 : index) : i64
    %292 = llvm.mlir.constant(1 : index) : i64
    %293 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb38(%291 : i64)
  ^bb38(%294: i64):  // 2 preds: ^bb37, ^bb39
    %295 = llvm.icmp "slt" %294, %292 : i64
    llvm.cond_br %295, ^bb39, ^bb40
  ^bb39:  // pred: ^bb38
    %296 = llvm.extractvalue %177[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %297 = llvm.mlir.constant(2 : index) : i64
    %298 = llvm.mul %284, %297  : i64
    %299 = llvm.add %298, %289  : i64
    %300 = llvm.add %299, %294  : i64
    %301 = llvm.getelementptr %296[%300] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %302 = llvm.load %301 : !llvm.ptr<i32>
    %303 = llvm.extractvalue %280[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %304 = llvm.mlir.constant(2 : index) : i64
    %305 = llvm.mul %284, %304  : i64
    %306 = llvm.add %305, %289  : i64
    %307 = llvm.add %306, %294  : i64
    %308 = llvm.getelementptr %303[%307] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %302, %308 : !llvm.ptr<i32>
    %309 = llvm.add %294, %293  : i64
    llvm.br ^bb38(%309 : i64)
  ^bb40:  // pred: ^bb38
    %310 = llvm.add %289, %288  : i64
    llvm.br ^bb36(%310 : i64)
  ^bb41:  // pred: ^bb36
    %311 = llvm.add %284, %283  : i64
    llvm.br ^bb34(%311 : i64)
  ^bb42:  // pred: ^bb34
    %312 = llvm.mlir.constant(1 : index) : i64
    %313 = llvm.mlir.constant(1 : index) : i64
    %314 = llvm.mlir.null : !llvm.ptr<i32>
    %315 = llvm.getelementptr %314[%312] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %316 = llvm.ptrtoint %315 : !llvm.ptr<i32> to i64
    %317 = llvm.mlir.constant(16 : index) : i64
    %318 = llvm.add %316, %317  : i64
    %319 = llvm.call @malloc(%318) : (i64) -> !llvm.ptr<i8>
    %320 = llvm.bitcast %319 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %321 = llvm.ptrtoint %320 : !llvm.ptr<i32> to i64
    %322 = llvm.mlir.constant(1 : index) : i64
    %323 = llvm.sub %317, %322  : i64
    %324 = llvm.add %321, %323  : i64
    %325 = llvm.urem %324, %317  : i64
    %326 = llvm.sub %324, %325  : i64
    %327 = llvm.inttoptr %326 : i64 to !llvm.ptr<i32>
    %328 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %329 = llvm.insertvalue %320, %328[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %330 = llvm.insertvalue %327, %329[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %331 = llvm.mlir.constant(0 : index) : i64
    %332 = llvm.insertvalue %331, %330[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %333 = llvm.insertvalue %312, %332[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %334 = llvm.insertvalue %313, %333[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %335 = llvm.mlir.constant(0 : index) : i64
    %336 = llvm.mlir.constant(1 : index) : i64
    %337 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb43(%335 : i64)
  ^bb43(%338: i64):  // 2 preds: ^bb42, ^bb44
    %339 = llvm.icmp "slt" %338, %336 : i64
    llvm.cond_br %339, ^bb44, ^bb45
  ^bb44:  // pred: ^bb43
    %340 = llvm.extractvalue %5[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %341 = llvm.getelementptr %340[%338] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %342 = llvm.load %341 : !llvm.ptr<i32>
    %343 = llvm.extractvalue %5[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %344 = llvm.getelementptr %343[%338] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %345 = llvm.load %344 : !llvm.ptr<i32>
    %346 = llvm.add %342, %345  : i32
    %347 = llvm.extractvalue %334[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %348 = llvm.getelementptr %347[%338] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %346, %348 : !llvm.ptr<i32>
    %349 = llvm.add %338, %337  : i64
    llvm.br ^bb43(%349 : i64)
  ^bb45:  // pred: ^bb43
    %350 = llvm.mlir.constant(1 : index) : i64
    %351 = llvm.mlir.constant(2 : index) : i64
    %352 = llvm.mlir.constant(2 : index) : i64
    %353 = llvm.mlir.constant(1 : index) : i64
    %354 = llvm.mlir.constant(1 : index) : i64
    %355 = llvm.mlir.constant(4 : index) : i64
    %356 = llvm.mlir.constant(4 : index) : i64
    %357 = llvm.mlir.null : !llvm.ptr<i32>
    %358 = llvm.getelementptr %357[%356] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %359 = llvm.ptrtoint %358 : !llvm.ptr<i32> to i64
    %360 = llvm.mlir.constant(16 : index) : i64
    %361 = llvm.add %359, %360  : i64
    %362 = llvm.call @malloc(%361) : (i64) -> !llvm.ptr<i8>
    %363 = llvm.bitcast %362 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %364 = llvm.ptrtoint %363 : !llvm.ptr<i32> to i64
    %365 = llvm.mlir.constant(1 : index) : i64
    %366 = llvm.sub %360, %365  : i64
    %367 = llvm.add %364, %366  : i64
    %368 = llvm.urem %367, %360  : i64
    %369 = llvm.sub %367, %368  : i64
    %370 = llvm.inttoptr %369 : i64 to !llvm.ptr<i32>
    %371 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %372 = llvm.insertvalue %363, %371[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %373 = llvm.insertvalue %370, %372[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %374 = llvm.mlir.constant(0 : index) : i64
    %375 = llvm.insertvalue %374, %373[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %376 = llvm.insertvalue %350, %375[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %377 = llvm.insertvalue %351, %376[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %378 = llvm.insertvalue %352, %377[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %379 = llvm.insertvalue %353, %378[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %380 = llvm.insertvalue %355, %379[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %381 = llvm.insertvalue %352, %380[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %382 = llvm.insertvalue %353, %381[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %383 = llvm.insertvalue %354, %382[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %384 = llvm.mlir.constant(0 : index) : i64
    %385 = llvm.mlir.constant(1 : index) : i64
    %386 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb46(%384 : i64)
  ^bb46(%387: i64):  // 2 preds: ^bb45, ^bb56
    %388 = llvm.icmp "slt" %387, %385 : i64
    llvm.cond_br %388, ^bb47, ^bb57
  ^bb47:  // pred: ^bb46
    %389 = llvm.mlir.constant(0 : index) : i64
    %390 = llvm.mlir.constant(2 : index) : i64
    %391 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb48(%389 : i64)
  ^bb48(%392: i64):  // 2 preds: ^bb47, ^bb55
    %393 = llvm.icmp "slt" %392, %390 : i64
    llvm.cond_br %393, ^bb49, ^bb56
  ^bb49:  // pred: ^bb48
    %394 = llvm.mlir.constant(0 : index) : i64
    %395 = llvm.mlir.constant(2 : index) : i64
    %396 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb50(%394 : i64)
  ^bb50(%397: i64):  // 2 preds: ^bb49, ^bb54
    %398 = llvm.icmp "slt" %397, %395 : i64
    llvm.cond_br %398, ^bb51, ^bb55
  ^bb51:  // pred: ^bb50
    %399 = llvm.mlir.constant(0 : index) : i64
    %400 = llvm.mlir.constant(1 : index) : i64
    %401 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb52(%399 : i64)
  ^bb52(%402: i64):  // 2 preds: ^bb51, ^bb53
    %403 = llvm.icmp "slt" %402, %400 : i64
    llvm.cond_br %403, ^bb53, ^bb54
  ^bb53:  // pred: ^bb52
    %404 = llvm.extractvalue %334[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %405 = llvm.getelementptr %404[%402] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %406 = llvm.load %405 : !llvm.ptr<i32>
    %407 = llvm.extractvalue %29[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %408 = llvm.mlir.constant(4 : index) : i64
    %409 = llvm.mul %387, %408  : i64
    %410 = llvm.mlir.constant(2 : index) : i64
    %411 = llvm.mul %392, %410  : i64
    %412 = llvm.add %409, %411  : i64
    %413 = llvm.add %412, %397  : i64
    %414 = llvm.add %413, %402  : i64
    %415 = llvm.getelementptr %407[%414] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %416 = llvm.load %415 : !llvm.ptr<i32>
    %417 = llvm.add %406, %416  : i32
    %418 = llvm.extractvalue %383[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %419 = llvm.mlir.constant(4 : index) : i64
    %420 = llvm.mul %387, %419  : i64
    %421 = llvm.mlir.constant(2 : index) : i64
    %422 = llvm.mul %392, %421  : i64
    %423 = llvm.add %420, %422  : i64
    %424 = llvm.add %423, %397  : i64
    %425 = llvm.add %424, %402  : i64
    %426 = llvm.getelementptr %418[%425] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %417, %426 : !llvm.ptr<i32>
    %427 = llvm.add %402, %401  : i64
    llvm.br ^bb52(%427 : i64)
  ^bb54:  // pred: ^bb52
    %428 = llvm.add %397, %396  : i64
    llvm.br ^bb50(%428 : i64)
  ^bb55:  // pred: ^bb50
    %429 = llvm.add %392, %391  : i64
    llvm.br ^bb48(%429 : i64)
  ^bb56:  // pred: ^bb48
    %430 = llvm.add %387, %386  : i64
    llvm.br ^bb46(%430 : i64)
  ^bb57:  // pred: ^bb46
    %431 = llvm.mlir.constant(1 : index) : i64
    %432 = llvm.mlir.constant(2 : index) : i64
    %433 = llvm.mlir.constant(2 : index) : i64
    %434 = llvm.mlir.constant(1 : index) : i64
    %435 = llvm.mlir.constant(1 : index) : i64
    %436 = llvm.mlir.constant(4 : index) : i64
    %437 = llvm.mlir.constant(4 : index) : i64
    %438 = llvm.mlir.null : !llvm.ptr<i32>
    %439 = llvm.getelementptr %438[%437] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %440 = llvm.ptrtoint %439 : !llvm.ptr<i32> to i64
    %441 = llvm.mlir.constant(16 : index) : i64
    %442 = llvm.add %440, %441  : i64
    %443 = llvm.call @malloc(%442) : (i64) -> !llvm.ptr<i8>
    %444 = llvm.bitcast %443 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %445 = llvm.ptrtoint %444 : !llvm.ptr<i32> to i64
    %446 = llvm.mlir.constant(1 : index) : i64
    %447 = llvm.sub %441, %446  : i64
    %448 = llvm.add %445, %447  : i64
    %449 = llvm.urem %448, %441  : i64
    %450 = llvm.sub %448, %449  : i64
    %451 = llvm.inttoptr %450 : i64 to !llvm.ptr<i32>
    %452 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %453 = llvm.insertvalue %444, %452[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %454 = llvm.insertvalue %451, %453[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %455 = llvm.mlir.constant(0 : index) : i64
    %456 = llvm.insertvalue %455, %454[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %457 = llvm.insertvalue %431, %456[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %458 = llvm.insertvalue %432, %457[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %459 = llvm.insertvalue %433, %458[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %460 = llvm.insertvalue %434, %459[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %461 = llvm.insertvalue %436, %460[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %462 = llvm.insertvalue %433, %461[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %463 = llvm.insertvalue %434, %462[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %464 = llvm.insertvalue %435, %463[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %465 = llvm.mlir.constant(0 : index) : i64
    %466 = llvm.mlir.constant(1 : index) : i64
    %467 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb58(%465 : i64)
  ^bb58(%468: i64):  // 2 preds: ^bb57, ^bb68
    %469 = llvm.icmp "slt" %468, %466 : i64
    llvm.cond_br %469, ^bb59, ^bb69
  ^bb59:  // pred: ^bb58
    %470 = llvm.mlir.constant(0 : index) : i64
    %471 = llvm.mlir.constant(2 : index) : i64
    %472 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb60(%470 : i64)
  ^bb60(%473: i64):  // 2 preds: ^bb59, ^bb67
    %474 = llvm.icmp "slt" %473, %471 : i64
    llvm.cond_br %474, ^bb61, ^bb68
  ^bb61:  // pred: ^bb60
    %475 = llvm.mlir.constant(0 : index) : i64
    %476 = llvm.mlir.constant(2 : index) : i64
    %477 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb62(%475 : i64)
  ^bb62(%478: i64):  // 2 preds: ^bb61, ^bb66
    %479 = llvm.icmp "slt" %478, %476 : i64
    llvm.cond_br %479, ^bb63, ^bb67
  ^bb63:  // pred: ^bb62
    %480 = llvm.mlir.constant(0 : index) : i64
    %481 = llvm.mlir.constant(1 : index) : i64
    %482 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb64(%480 : i64)
  ^bb64(%483: i64):  // 2 preds: ^bb63, ^bb65
    %484 = llvm.icmp "slt" %483, %481 : i64
    llvm.cond_br %484, ^bb65, ^bb66
  ^bb65:  // pred: ^bb64
    %485 = llvm.extractvalue %383[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %486 = llvm.mlir.constant(4 : index) : i64
    %487 = llvm.mul %468, %486  : i64
    %488 = llvm.mlir.constant(2 : index) : i64
    %489 = llvm.mul %473, %488  : i64
    %490 = llvm.add %487, %489  : i64
    %491 = llvm.add %490, %478  : i64
    %492 = llvm.add %491, %483  : i64
    %493 = llvm.getelementptr %485[%492] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %494 = llvm.load %493 : !llvm.ptr<i32>
    %495 = llvm.extractvalue %36[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %496 = llvm.load %495 : !llvm.ptr<i32>
    %497 = llvm.icmp "slt" %494, %496 : i32
    %498 = llvm.select %497, %496, %494 : i1, i32
    %499 = llvm.extractvalue %43[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %500 = llvm.load %499 : !llvm.ptr<i32>
    %501 = llvm.icmp "slt" %498, %500 : i32
    %502 = llvm.select %501, %498, %500 : i1, i32
    %503 = llvm.extractvalue %464[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %504 = llvm.mlir.constant(4 : index) : i64
    %505 = llvm.mul %468, %504  : i64
    %506 = llvm.mlir.constant(2 : index) : i64
    %507 = llvm.mul %473, %506  : i64
    %508 = llvm.add %505, %507  : i64
    %509 = llvm.add %508, %478  : i64
    %510 = llvm.add %509, %483  : i64
    %511 = llvm.getelementptr %503[%510] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %502, %511 : !llvm.ptr<i32>
    %512 = llvm.add %483, %482  : i64
    llvm.br ^bb64(%512 : i64)
  ^bb66:  // pred: ^bb64
    %513 = llvm.add %478, %477  : i64
    llvm.br ^bb62(%513 : i64)
  ^bb67:  // pred: ^bb62
    %514 = llvm.add %473, %472  : i64
    llvm.br ^bb60(%514 : i64)
  ^bb68:  // pred: ^bb60
    %515 = llvm.add %468, %467  : i64
    llvm.br ^bb58(%515 : i64)
  ^bb69:  // pred: ^bb58
    %516 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    %517 = llvm.insertvalue %280, %516[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %518 = llvm.insertvalue %464, %517[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    llvm.return %518 : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>>) attributes {input_names = ["v3_0"], llvm.emit_c_interface, output_names = ["v0_0", "v6_0"]} {
    %0 = llvm.load %arg1 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>>
    %1 = llvm.extractvalue %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %2 = llvm.extractvalue %0[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %3 = llvm.extractvalue %0[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %4 = llvm.extractvalue %0[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %5 = llvm.extractvalue %0[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %6 = llvm.call @main_graph(%1, %2, %3, %4, %5) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    llvm.store %6, %arg0 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %3 = llvm.mlir.constant(0 : i64) : i64
    %4 = llvm.getelementptr %0[%3] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %5 = llvm.load %4 : !llvm.ptr<ptr<i8>>
    %6 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>>
    %7 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %8 = llvm.call @omTensorGetDataPtr(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %9 = llvm.bitcast %8 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %10 = llvm.insertvalue %9, %7[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %11 = llvm.insertvalue %9, %10[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %12 = llvm.mlir.constant(0 : i64) : i64
    %13 = llvm.insertvalue %12, %11[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %14 = llvm.call @omTensorGetShape(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %15 = llvm.call @omTensorGetStrides(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %16 = llvm.mlir.constant(0 : i64) : i64
    %17 = llvm.getelementptr %14[%16] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %18 = llvm.load %17 : !llvm.ptr<i64>
    %19 = llvm.insertvalue %18, %13[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %20 = llvm.getelementptr %15[%16] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %21 = llvm.load %20 : !llvm.ptr<i64>
    %22 = llvm.insertvalue %21, %19[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.store %22, %6 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>>
    llvm.call @_mlir_ciface_main_graph(%2, %6) : (!llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>>) -> ()
    %23 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %24 = llvm.extractvalue %23[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %25 = llvm.extractvalue %23[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %26 = llvm.mlir.constant(2 : i64) : i64
    %27 = llvm.mlir.constant(16 : i64) : i64
    %28 = llvm.call @malloc(%27) : (i64) -> !llvm.ptr<i8>
    %29 = llvm.bitcast %28 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %30 = llvm.mlir.constant(3 : i64) : i64
    %31 = llvm.call @omTensorCreateUntyped(%30) : (i64) -> !llvm.ptr<i8>
    %32 = llvm.mlir.constant(1 : i64) : i64
    %33 = llvm.extractvalue %24[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %34 = llvm.bitcast %33 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %35 = llvm.extractvalue %24[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %36 = llvm.bitcast %35 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%31, %32, %34, %36) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %37 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%31, %37) : (!llvm.ptr<i8>, i64) -> ()
    %38 = llvm.call @omTensorGetShape(%31) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %39 = llvm.call @omTensorGetStrides(%31) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %40 = llvm.mlir.constant(0 : i64) : i64
    %41 = llvm.extractvalue %24[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %42 = llvm.getelementptr %38[%40] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %41, %42 : !llvm.ptr<i64>
    %43 = llvm.extractvalue %24[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %44 = llvm.getelementptr %39[%40] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %43, %44 : !llvm.ptr<i64>
    %45 = llvm.mlir.constant(1 : i64) : i64
    %46 = llvm.extractvalue %24[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %47 = llvm.getelementptr %38[%45] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %46, %47 : !llvm.ptr<i64>
    %48 = llvm.extractvalue %24[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %49 = llvm.getelementptr %39[%45] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %48, %49 : !llvm.ptr<i64>
    %50 = llvm.mlir.constant(2 : i64) : i64
    %51 = llvm.extractvalue %24[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %52 = llvm.getelementptr %38[%50] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %51, %52 : !llvm.ptr<i64>
    %53 = llvm.extractvalue %24[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %54 = llvm.getelementptr %39[%50] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %53, %54 : !llvm.ptr<i64>
    %55 = llvm.mlir.constant(0 : i64) : i64
    %56 = llvm.getelementptr %29[%55] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %31, %56 : !llvm.ptr<ptr<i8>>
    %57 = llvm.mlir.constant(4 : i64) : i64
    %58 = llvm.call @omTensorCreateUntyped(%57) : (i64) -> !llvm.ptr<i8>
    %59 = llvm.mlir.constant(1 : i64) : i64
    %60 = llvm.extractvalue %25[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %61 = llvm.bitcast %60 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %62 = llvm.extractvalue %25[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %63 = llvm.bitcast %62 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%58, %59, %61, %63) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %64 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%58, %64) : (!llvm.ptr<i8>, i64) -> ()
    %65 = llvm.call @omTensorGetShape(%58) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %66 = llvm.call @omTensorGetStrides(%58) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %67 = llvm.mlir.constant(0 : i64) : i64
    %68 = llvm.extractvalue %25[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %69 = llvm.getelementptr %65[%67] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %68, %69 : !llvm.ptr<i64>
    %70 = llvm.extractvalue %25[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %71 = llvm.getelementptr %66[%67] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %70, %71 : !llvm.ptr<i64>
    %72 = llvm.mlir.constant(1 : i64) : i64
    %73 = llvm.extractvalue %25[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %74 = llvm.getelementptr %65[%72] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %73, %74 : !llvm.ptr<i64>
    %75 = llvm.extractvalue %25[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %76 = llvm.getelementptr %66[%72] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %75, %76 : !llvm.ptr<i64>
    %77 = llvm.mlir.constant(2 : i64) : i64
    %78 = llvm.extractvalue %25[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %79 = llvm.getelementptr %65[%77] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %78, %79 : !llvm.ptr<i64>
    %80 = llvm.extractvalue %25[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %81 = llvm.getelementptr %66[%77] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %80, %81 : !llvm.ptr<i64>
    %82 = llvm.mlir.constant(3 : i64) : i64
    %83 = llvm.extractvalue %25[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %84 = llvm.getelementptr %65[%82] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %83, %84 : !llvm.ptr<i64>
    %85 = llvm.extractvalue %25[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %86 = llvm.getelementptr %66[%82] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %85, %86 : !llvm.ptr<i64>
    %87 = llvm.mlir.constant(1 : i64) : i64
    %88 = llvm.getelementptr %29[%87] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %58, %88 : !llvm.ptr<ptr<i8>>
    %89 = llvm.call @omTensorListCreate(%29, %26, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %89 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_in_sig : !llvm.ptr<array<60 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<60 x i8>> to !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<137 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<137 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

