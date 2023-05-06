module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1] , \22name\22 : \22v5_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i32\22 , \22dims\22 : [1 , 2 , 1 , 1] , \22name\22 : \22v4_0\22 }\0A ,    { \22type\22 : \22i1\22 , \22dims\22 : [1 , 2 , 1 , 1] , \22name\22 : \22v3_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.mlir.global internal constant @constant_9(dense<[[[[6]], [[7]]]]> : tensor<1x2x1x1xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x array<2 x array<1 x array<1 x i32>>>>
  llvm.mlir.global internal constant @constant_8(dense<[1, 2, 1, 1]> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.mlir.global internal constant @constant_7(dense<-1> : tensor<i64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i64>
  llvm.mlir.global internal constant @constant_6(dense<[1, 2, 1, 1]> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.mlir.global internal constant @constant_5(dense<[1, 2, 1, 1]> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.mlir.global internal constant @constant_4(dense<-1> : tensor<i64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i64>
  llvm.mlir.global internal constant @constant_3(dense<[1, 2, 1, 1]> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.mlir.global internal constant @constant_1(dense<1> : tensor<i32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i32>
  llvm.mlir.global internal constant @constant_0(dense<-1> : tensor<i32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i32>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> attributes {input_names = ["v5_0"], llvm.emit_c_interface, output_names = ["v4_0", "v3_0"]} {
    %0 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %1 = llvm.insertvalue %arg0, %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %2 = llvm.insertvalue %arg1, %1[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %3 = llvm.insertvalue %arg2, %2[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %4 = llvm.insertvalue %arg3, %3[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %5 = llvm.insertvalue %arg4, %4[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %6 = llvm.mlir.constant(0 : i32) : i32
    %7 = llvm.mlir.constant(3 : index) : i64
    %8 = llvm.mlir.constant(1 : i64) : i64
    %9 = llvm.mlir.constant(0 : index) : i64
    %10 = llvm.mlir.constant(2 : index) : i64
    %11 = llvm.mlir.addressof @constant_0 : !llvm.ptr<array<1 x i32>>
    %12 = llvm.bitcast %11 : !llvm.ptr<array<1 x i32>> to !llvm.ptr<i32>
    %13 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64)>
    %14 = llvm.insertvalue %12, %13[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %15 = llvm.insertvalue %12, %14[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %16 = llvm.mlir.constant(0 : index) : i64
    %17 = llvm.insertvalue %16, %15[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %18 = llvm.mlir.addressof @constant_1 : !llvm.ptr<array<1 x i32>>
    %19 = llvm.bitcast %18 : !llvm.ptr<array<1 x i32>> to !llvm.ptr<i32>
    %20 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64)>
    %21 = llvm.insertvalue %19, %20[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %22 = llvm.insertvalue %19, %21[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %23 = llvm.mlir.constant(0 : index) : i64
    %24 = llvm.insertvalue %23, %22[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %25 = llvm.mlir.addressof @constant_3 : !llvm.ptr<array<4 x i64>>
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
    %36 = llvm.mlir.addressof @constant_4 : !llvm.ptr<array<1 x i64>>
    %37 = llvm.bitcast %36 : !llvm.ptr<array<1 x i64>> to !llvm.ptr<i64>
    %38 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64)>
    %39 = llvm.insertvalue %37, %38[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %40 = llvm.insertvalue %37, %39[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %41 = llvm.mlir.constant(0 : index) : i64
    %42 = llvm.insertvalue %41, %40[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %43 = llvm.mlir.addressof @constant_5 : !llvm.ptr<array<4 x i64>>
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
    %54 = llvm.mlir.addressof @constant_6 : !llvm.ptr<array<4 x i64>>
    %55 = llvm.bitcast %54 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %56 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %57 = llvm.insertvalue %55, %56[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %58 = llvm.insertvalue %55, %57[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %59 = llvm.mlir.constant(0 : index) : i64
    %60 = llvm.insertvalue %59, %58[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %61 = llvm.mlir.constant(4 : index) : i64
    %62 = llvm.insertvalue %61, %60[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %63 = llvm.mlir.constant(1 : index) : i64
    %64 = llvm.insertvalue %63, %62[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %65 = llvm.mlir.addressof @constant_7 : !llvm.ptr<array<1 x i64>>
    %66 = llvm.bitcast %65 : !llvm.ptr<array<1 x i64>> to !llvm.ptr<i64>
    %67 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64)>
    %68 = llvm.insertvalue %66, %67[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %69 = llvm.insertvalue %66, %68[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %70 = llvm.mlir.constant(0 : index) : i64
    %71 = llvm.insertvalue %70, %69[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %72 = llvm.mlir.addressof @constant_8 : !llvm.ptr<array<4 x i64>>
    %73 = llvm.bitcast %72 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %74 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %75 = llvm.insertvalue %73, %74[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %76 = llvm.insertvalue %73, %75[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %77 = llvm.mlir.constant(0 : index) : i64
    %78 = llvm.insertvalue %77, %76[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %79 = llvm.mlir.constant(4 : index) : i64
    %80 = llvm.insertvalue %79, %78[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %81 = llvm.mlir.constant(1 : index) : i64
    %82 = llvm.insertvalue %81, %80[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %83 = llvm.mlir.addressof @constant_9 : !llvm.ptr<array<1 x array<2 x array<1 x array<1 x i32>>>>>
    %84 = llvm.bitcast %83 : !llvm.ptr<array<1 x array<2 x array<1 x array<1 x i32>>>>> to !llvm.ptr<i32>
    %85 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %86 = llvm.insertvalue %84, %85[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %87 = llvm.insertvalue %84, %86[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %88 = llvm.mlir.constant(0 : index) : i64
    %89 = llvm.insertvalue %88, %87[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %90 = llvm.mlir.constant(1 : index) : i64
    %91 = llvm.insertvalue %90, %89[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %92 = llvm.mlir.constant(2 : index) : i64
    %93 = llvm.insertvalue %92, %91[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %94 = llvm.mlir.constant(2 : index) : i64
    %95 = llvm.insertvalue %94, %93[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %96 = llvm.mlir.constant(1 : index) : i64
    %97 = llvm.insertvalue %96, %95[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %98 = llvm.mlir.constant(1 : index) : i64
    %99 = llvm.insertvalue %98, %97[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %100 = llvm.mlir.constant(1 : index) : i64
    %101 = llvm.insertvalue %100, %99[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %102 = llvm.mlir.constant(1 : index) : i64
    %103 = llvm.insertvalue %102, %101[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %104 = llvm.mlir.constant(1 : index) : i64
    %105 = llvm.insertvalue %104, %103[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %106 = llvm.mlir.constant(1 : index) : i64
    %107 = llvm.mlir.constant(2 : index) : i64
    %108 = llvm.mlir.constant(1 : index) : i64
    %109 = llvm.mlir.constant(1 : index) : i64
    %110 = llvm.mlir.constant(1 : index) : i64
    %111 = llvm.mlir.constant(2 : index) : i64
    %112 = llvm.mlir.null : !llvm.ptr<i32>
    %113 = llvm.getelementptr %112[%111] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %114 = llvm.ptrtoint %113 : !llvm.ptr<i32> to i64
    %115 = llvm.mlir.constant(16 : index) : i64
    %116 = llvm.add %114, %115  : i64
    %117 = llvm.call @malloc(%116) : (i64) -> !llvm.ptr<i8>
    %118 = llvm.bitcast %117 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %119 = llvm.ptrtoint %118 : !llvm.ptr<i32> to i64
    %120 = llvm.mlir.constant(1 : index) : i64
    %121 = llvm.sub %115, %120  : i64
    %122 = llvm.add %119, %121  : i64
    %123 = llvm.urem %122, %115  : i64
    %124 = llvm.sub %122, %123  : i64
    %125 = llvm.inttoptr %124 : i64 to !llvm.ptr<i32>
    %126 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %127 = llvm.insertvalue %118, %126[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %128 = llvm.insertvalue %125, %127[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %129 = llvm.mlir.constant(0 : index) : i64
    %130 = llvm.insertvalue %129, %128[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %131 = llvm.insertvalue %106, %130[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %132 = llvm.insertvalue %107, %131[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %133 = llvm.insertvalue %108, %132[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %134 = llvm.insertvalue %109, %133[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %135 = llvm.insertvalue %107, %134[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %136 = llvm.insertvalue %108, %135[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %137 = llvm.insertvalue %109, %136[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %138 = llvm.insertvalue %110, %137[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %139 = llvm.mlir.constant(0 : index) : i64
    %140 = llvm.mlir.constant(1 : index) : i64
    %141 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%139 : i64)
  ^bb1(%142: i64):  // 2 preds: ^bb0, ^bb11
    %143 = llvm.icmp "slt" %142, %140 : i64
    llvm.cond_br %143, ^bb2, ^bb12
  ^bb2:  // pred: ^bb1
    %144 = llvm.mlir.constant(0 : index) : i64
    %145 = llvm.mlir.constant(2 : index) : i64
    %146 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%144 : i64)
  ^bb3(%147: i64):  // 2 preds: ^bb2, ^bb10
    %148 = llvm.icmp "slt" %147, %145 : i64
    llvm.cond_br %148, ^bb4, ^bb11
  ^bb4:  // pred: ^bb3
    %149 = llvm.mlir.constant(0 : index) : i64
    %150 = llvm.mlir.constant(1 : index) : i64
    %151 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%149 : i64)
  ^bb5(%152: i64):  // 2 preds: ^bb4, ^bb9
    %153 = llvm.icmp "slt" %152, %150 : i64
    llvm.cond_br %153, ^bb6, ^bb10
  ^bb6:  // pred: ^bb5
    %154 = llvm.mlir.constant(0 : index) : i64
    %155 = llvm.mlir.constant(1 : index) : i64
    %156 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%154 : i64)
  ^bb7(%157: i64):  // 2 preds: ^bb6, ^bb8
    %158 = llvm.icmp "slt" %157, %155 : i64
    llvm.cond_br %158, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %159 = llvm.extractvalue %5[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %160 = llvm.getelementptr %159[%157] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %161 = llvm.load %160 : !llvm.ptr<i32>
    %162 = llvm.extractvalue %105[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %163 = llvm.mlir.constant(2 : index) : i64
    %164 = llvm.mul %142, %163  : i64
    %165 = llvm.add %164, %147  : i64
    %166 = llvm.add %165, %152  : i64
    %167 = llvm.add %166, %157  : i64
    %168 = llvm.getelementptr %162[%167] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %169 = llvm.load %168 : !llvm.ptr<i32>
    %170 = llvm.add %161, %169  : i32
    %171 = llvm.extractvalue %138[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %172 = llvm.mlir.constant(2 : index) : i64
    %173 = llvm.mul %142, %172  : i64
    %174 = llvm.add %173, %147  : i64
    %175 = llvm.add %174, %152  : i64
    %176 = llvm.add %175, %157  : i64
    %177 = llvm.getelementptr %171[%176] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %170, %177 : !llvm.ptr<i32>
    %178 = llvm.add %157, %156  : i64
    llvm.br ^bb7(%178 : i64)
  ^bb9:  // pred: ^bb7
    %179 = llvm.add %152, %151  : i64
    llvm.br ^bb5(%179 : i64)
  ^bb10:  // pred: ^bb5
    %180 = llvm.add %147, %146  : i64
    llvm.br ^bb3(%180 : i64)
  ^bb11:  // pred: ^bb3
    %181 = llvm.add %142, %141  : i64
    llvm.br ^bb1(%181 : i64)
  ^bb12:  // pred: ^bb1
    %182 = llvm.mlir.constant(1 : index) : i64
    %183 = llvm.mlir.constant(2 : index) : i64
    %184 = llvm.mlir.constant(1 : index) : i64
    %185 = llvm.mlir.constant(1 : index) : i64
    %186 = llvm.mlir.constant(1 : index) : i64
    %187 = llvm.mlir.constant(2 : index) : i64
    %188 = llvm.mlir.null : !llvm.ptr<i32>
    %189 = llvm.getelementptr %188[%187] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %190 = llvm.ptrtoint %189 : !llvm.ptr<i32> to i64
    %191 = llvm.mlir.constant(16 : index) : i64
    %192 = llvm.add %190, %191  : i64
    %193 = llvm.call @malloc(%192) : (i64) -> !llvm.ptr<i8>
    %194 = llvm.bitcast %193 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %195 = llvm.ptrtoint %194 : !llvm.ptr<i32> to i64
    %196 = llvm.mlir.constant(1 : index) : i64
    %197 = llvm.sub %191, %196  : i64
    %198 = llvm.add %195, %197  : i64
    %199 = llvm.urem %198, %191  : i64
    %200 = llvm.sub %198, %199  : i64
    %201 = llvm.inttoptr %200 : i64 to !llvm.ptr<i32>
    %202 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %203 = llvm.insertvalue %194, %202[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %204 = llvm.insertvalue %201, %203[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %205 = llvm.mlir.constant(0 : index) : i64
    %206 = llvm.insertvalue %205, %204[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %207 = llvm.insertvalue %182, %206[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %208 = llvm.insertvalue %183, %207[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %209 = llvm.insertvalue %184, %208[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %210 = llvm.insertvalue %185, %209[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %211 = llvm.insertvalue %183, %210[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %212 = llvm.insertvalue %184, %211[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %213 = llvm.insertvalue %185, %212[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %214 = llvm.insertvalue %186, %213[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %215 = llvm.mlir.constant(0 : index) : i64
    %216 = llvm.mlir.constant(1 : index) : i64
    %217 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%215 : i64)
  ^bb13(%218: i64):  // 2 preds: ^bb12, ^bb23
    %219 = llvm.icmp "slt" %218, %216 : i64
    llvm.cond_br %219, ^bb14, ^bb24
  ^bb14:  // pred: ^bb13
    %220 = llvm.mlir.constant(0 : index) : i64
    %221 = llvm.mlir.constant(2 : index) : i64
    %222 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb15(%220 : i64)
  ^bb15(%223: i64):  // 2 preds: ^bb14, ^bb22
    %224 = llvm.icmp "slt" %223, %221 : i64
    llvm.cond_br %224, ^bb16, ^bb23
  ^bb16:  // pred: ^bb15
    %225 = llvm.mlir.constant(0 : index) : i64
    %226 = llvm.mlir.constant(1 : index) : i64
    %227 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb17(%225 : i64)
  ^bb17(%228: i64):  // 2 preds: ^bb16, ^bb21
    %229 = llvm.icmp "slt" %228, %226 : i64
    llvm.cond_br %229, ^bb18, ^bb22
  ^bb18:  // pred: ^bb17
    %230 = llvm.mlir.constant(0 : index) : i64
    %231 = llvm.mlir.constant(1 : index) : i64
    %232 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%230 : i64)
  ^bb19(%233: i64):  // 2 preds: ^bb18, ^bb20
    %234 = llvm.icmp "slt" %233, %231 : i64
    llvm.cond_br %234, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %235 = llvm.extractvalue %138[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %236 = llvm.mlir.constant(2 : index) : i64
    %237 = llvm.mul %218, %236  : i64
    %238 = llvm.add %237, %223  : i64
    %239 = llvm.add %238, %228  : i64
    %240 = llvm.add %239, %233  : i64
    %241 = llvm.getelementptr %235[%240] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %242 = llvm.load %241 : !llvm.ptr<i32>
    %243 = llvm.extractvalue %17[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %244 = llvm.load %243 : !llvm.ptr<i32>
    %245 = llvm.icmp "slt" %242, %244 : i32
    %246 = llvm.select %245, %244, %242 : i1, i32
    %247 = llvm.extractvalue %24[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %248 = llvm.load %247 : !llvm.ptr<i32>
    %249 = llvm.icmp "slt" %246, %248 : i32
    %250 = llvm.select %249, %246, %248 : i1, i32
    %251 = llvm.extractvalue %214[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %252 = llvm.mlir.constant(2 : index) : i64
    %253 = llvm.mul %218, %252  : i64
    %254 = llvm.add %253, %223  : i64
    %255 = llvm.add %254, %228  : i64
    %256 = llvm.add %255, %233  : i64
    %257 = llvm.getelementptr %251[%256] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %250, %257 : !llvm.ptr<i32>
    %258 = llvm.add %233, %232  : i64
    llvm.br ^bb19(%258 : i64)
  ^bb21:  // pred: ^bb19
    %259 = llvm.add %228, %227  : i64
    llvm.br ^bb17(%259 : i64)
  ^bb22:  // pred: ^bb17
    %260 = llvm.add %223, %222  : i64
    llvm.br ^bb15(%260 : i64)
  ^bb23:  // pred: ^bb15
    %261 = llvm.add %218, %217  : i64
    llvm.br ^bb13(%261 : i64)
  ^bb24:  // pred: ^bb13
    %262 = llvm.mlir.constant(4 : index) : i64
    %263 = llvm.mlir.constant(1 : index) : i64
    %264 = llvm.mlir.null : !llvm.ptr<i64>
    %265 = llvm.getelementptr %264[%262] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %266 = llvm.ptrtoint %265 : !llvm.ptr<i64> to i64
    %267 = llvm.mlir.constant(16 : index) : i64
    %268 = llvm.add %266, %267  : i64
    %269 = llvm.call @malloc(%268) : (i64) -> !llvm.ptr<i8>
    %270 = llvm.bitcast %269 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %271 = llvm.ptrtoint %270 : !llvm.ptr<i64> to i64
    %272 = llvm.mlir.constant(1 : index) : i64
    %273 = llvm.sub %267, %272  : i64
    %274 = llvm.add %271, %273  : i64
    %275 = llvm.urem %274, %267  : i64
    %276 = llvm.sub %274, %275  : i64
    %277 = llvm.inttoptr %276 : i64 to !llvm.ptr<i64>
    %278 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %279 = llvm.insertvalue %270, %278[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %280 = llvm.insertvalue %277, %279[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %281 = llvm.mlir.constant(0 : index) : i64
    %282 = llvm.insertvalue %281, %280[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %283 = llvm.insertvalue %262, %282[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %284 = llvm.insertvalue %263, %283[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %285 = llvm.mlir.constant(0 : index) : i64
    %286 = llvm.mlir.constant(4 : index) : i64
    %287 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb25(%285 : i64)
  ^bb25(%288: i64):  // 2 preds: ^bb24, ^bb26
    %289 = llvm.icmp "slt" %288, %286 : i64
    llvm.cond_br %289, ^bb26, ^bb27
  ^bb26:  // pred: ^bb25
    %290 = llvm.extractvalue %284[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %291 = llvm.getelementptr %290[%288] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %8, %291 : !llvm.ptr<i64>
    %292 = llvm.add %288, %287  : i64
    llvm.br ^bb25(%292 : i64)
  ^bb27:  // pred: ^bb25
    %293 = llvm.mlir.constant(4 : index) : i64
    %294 = llvm.mlir.constant(1 : index) : i64
    %295 = llvm.mlir.null : !llvm.ptr<i64>
    %296 = llvm.getelementptr %295[%293] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %297 = llvm.ptrtoint %296 : !llvm.ptr<i64> to i64
    %298 = llvm.mlir.constant(16 : index) : i64
    %299 = llvm.add %297, %298  : i64
    %300 = llvm.call @malloc(%299) : (i64) -> !llvm.ptr<i8>
    %301 = llvm.bitcast %300 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %302 = llvm.ptrtoint %301 : !llvm.ptr<i64> to i64
    %303 = llvm.mlir.constant(1 : index) : i64
    %304 = llvm.sub %298, %303  : i64
    %305 = llvm.add %302, %304  : i64
    %306 = llvm.urem %305, %298  : i64
    %307 = llvm.sub %305, %306  : i64
    %308 = llvm.inttoptr %307 : i64 to !llvm.ptr<i64>
    %309 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %310 = llvm.insertvalue %301, %309[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %311 = llvm.insertvalue %308, %310[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %312 = llvm.mlir.constant(0 : index) : i64
    %313 = llvm.insertvalue %312, %311[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %314 = llvm.insertvalue %293, %313[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %315 = llvm.insertvalue %294, %314[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %316 = llvm.mlir.constant(0 : index) : i64
    %317 = llvm.mlir.constant(4 : index) : i64
    %318 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb28(%316 : i64)
  ^bb28(%319: i64):  // 2 preds: ^bb27, ^bb29
    %320 = llvm.icmp "slt" %319, %317 : i64
    llvm.cond_br %320, ^bb29, ^bb30
  ^bb29:  // pred: ^bb28
    %321 = llvm.extractvalue %284[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %322 = llvm.getelementptr %321[%319] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %323 = llvm.load %322 : !llvm.ptr<i64>
    %324 = llvm.extractvalue %71[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %325 = llvm.load %324 : !llvm.ptr<i64>
    %326 = llvm.mul %323, %325  : i64
    %327 = llvm.extractvalue %315[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %328 = llvm.getelementptr %327[%319] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %326, %328 : !llvm.ptr<i64>
    %329 = llvm.add %319, %318  : i64
    llvm.br ^bb28(%329 : i64)
  ^bb30:  // pred: ^bb28
    %330 = llvm.mlir.constant(4 : index) : i64
    %331 = llvm.mlir.constant(1 : index) : i64
    %332 = llvm.mlir.null : !llvm.ptr<i1>
    %333 = llvm.getelementptr %332[%330] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %334 = llvm.ptrtoint %333 : !llvm.ptr<i1> to i64
    %335 = llvm.mlir.constant(16 : index) : i64
    %336 = llvm.add %334, %335  : i64
    %337 = llvm.call @malloc(%336) : (i64) -> !llvm.ptr<i8>
    %338 = llvm.bitcast %337 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %339 = llvm.ptrtoint %338 : !llvm.ptr<i1> to i64
    %340 = llvm.mlir.constant(1 : index) : i64
    %341 = llvm.sub %335, %340  : i64
    %342 = llvm.add %339, %341  : i64
    %343 = llvm.urem %342, %335  : i64
    %344 = llvm.sub %342, %343  : i64
    %345 = llvm.inttoptr %344 : i64 to !llvm.ptr<i1>
    %346 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %347 = llvm.insertvalue %338, %346[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %348 = llvm.insertvalue %345, %347[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %349 = llvm.mlir.constant(0 : index) : i64
    %350 = llvm.insertvalue %349, %348[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %351 = llvm.insertvalue %330, %350[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %352 = llvm.insertvalue %331, %351[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %353 = llvm.mlir.constant(0 : index) : i64
    %354 = llvm.mlir.constant(4 : index) : i64
    %355 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb31(%353 : i64)
  ^bb31(%356: i64):  // 2 preds: ^bb30, ^bb32
    %357 = llvm.icmp "slt" %356, %354 : i64
    llvm.cond_br %357, ^bb32, ^bb33
  ^bb32:  // pred: ^bb31
    %358 = llvm.extractvalue %64[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %359 = llvm.getelementptr %358[%356] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %360 = llvm.load %359 : !llvm.ptr<i64>
    %361 = llvm.extractvalue %315[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %362 = llvm.getelementptr %361[%356] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %363 = llvm.load %362 : !llvm.ptr<i64>
    %364 = llvm.icmp "eq" %360, %363 : i64
    %365 = llvm.extractvalue %352[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %366 = llvm.getelementptr %365[%356] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %364, %366 : !llvm.ptr<i1>
    %367 = llvm.add %356, %355  : i64
    llvm.br ^bb31(%367 : i64)
  ^bb33:  // pred: ^bb31
    %368 = llvm.mlir.constant(4 : index) : i64
    %369 = llvm.mlir.constant(1 : index) : i64
    %370 = llvm.mlir.null : !llvm.ptr<i64>
    %371 = llvm.getelementptr %370[%368] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %372 = llvm.ptrtoint %371 : !llvm.ptr<i64> to i64
    %373 = llvm.mlir.constant(16 : index) : i64
    %374 = llvm.add %372, %373  : i64
    %375 = llvm.call @malloc(%374) : (i64) -> !llvm.ptr<i8>
    %376 = llvm.bitcast %375 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %377 = llvm.ptrtoint %376 : !llvm.ptr<i64> to i64
    %378 = llvm.mlir.constant(1 : index) : i64
    %379 = llvm.sub %373, %378  : i64
    %380 = llvm.add %377, %379  : i64
    %381 = llvm.urem %380, %373  : i64
    %382 = llvm.sub %380, %381  : i64
    %383 = llvm.inttoptr %382 : i64 to !llvm.ptr<i64>
    %384 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %385 = llvm.insertvalue %376, %384[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %386 = llvm.insertvalue %383, %385[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %387 = llvm.mlir.constant(0 : index) : i64
    %388 = llvm.insertvalue %387, %386[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %389 = llvm.insertvalue %368, %388[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %390 = llvm.insertvalue %369, %389[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %391 = llvm.mlir.constant(0 : index) : i64
    %392 = llvm.mlir.constant(4 : index) : i64
    %393 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb34(%391 : i64)
  ^bb34(%394: i64):  // 2 preds: ^bb33, ^bb35
    %395 = llvm.icmp "slt" %394, %392 : i64
    llvm.cond_br %395, ^bb35, ^bb36
  ^bb35:  // pred: ^bb34
    %396 = llvm.extractvalue %352[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %397 = llvm.getelementptr %396[%394] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %398 = llvm.load %397 : !llvm.ptr<i1>
    %399 = llvm.extractvalue %284[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %400 = llvm.getelementptr %399[%394] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %401 = llvm.load %400 : !llvm.ptr<i64>
    %402 = llvm.extractvalue %82[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %403 = llvm.getelementptr %402[%394] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %404 = llvm.load %403 : !llvm.ptr<i64>
    %405 = llvm.select %398, %401, %404 : i1, i64
    %406 = llvm.extractvalue %390[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %407 = llvm.getelementptr %406[%394] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %405, %407 : !llvm.ptr<i64>
    %408 = llvm.add %394, %393  : i64
    llvm.br ^bb34(%408 : i64)
  ^bb36:  // pred: ^bb34
    %409 = llvm.mlir.constant(1 : index) : i64
    %410 = llvm.mlir.constant(2 : index) : i64
    %411 = llvm.mlir.constant(1 : index) : i64
    %412 = llvm.mlir.constant(1 : index) : i64
    %413 = llvm.mlir.constant(1 : index) : i64
    %414 = llvm.mlir.constant(2 : index) : i64
    %415 = llvm.mlir.null : !llvm.ptr<i32>
    %416 = llvm.getelementptr %415[%414] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %417 = llvm.ptrtoint %416 : !llvm.ptr<i32> to i64
    %418 = llvm.mlir.constant(16 : index) : i64
    %419 = llvm.add %417, %418  : i64
    %420 = llvm.call @malloc(%419) : (i64) -> !llvm.ptr<i8>
    %421 = llvm.bitcast %420 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %422 = llvm.ptrtoint %421 : !llvm.ptr<i32> to i64
    %423 = llvm.mlir.constant(1 : index) : i64
    %424 = llvm.sub %418, %423  : i64
    %425 = llvm.add %422, %424  : i64
    %426 = llvm.urem %425, %418  : i64
    %427 = llvm.sub %425, %426  : i64
    %428 = llvm.inttoptr %427 : i64 to !llvm.ptr<i32>
    %429 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %430 = llvm.insertvalue %421, %429[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %431 = llvm.insertvalue %428, %430[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %432 = llvm.mlir.constant(0 : index) : i64
    %433 = llvm.insertvalue %432, %431[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %434 = llvm.insertvalue %409, %433[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %435 = llvm.insertvalue %410, %434[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %436 = llvm.insertvalue %411, %435[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %437 = llvm.insertvalue %412, %436[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %438 = llvm.insertvalue %410, %437[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %439 = llvm.insertvalue %411, %438[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %440 = llvm.insertvalue %412, %439[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %441 = llvm.insertvalue %413, %440[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %442 = llvm.mlir.constant(0 : index) : i64
    %443 = llvm.mlir.constant(1 : index) : i64
    %444 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb37(%442 : i64)
  ^bb37(%445: i64):  // 2 preds: ^bb36, ^bb47
    %446 = llvm.icmp "slt" %445, %443 : i64
    llvm.cond_br %446, ^bb38, ^bb48
  ^bb38:  // pred: ^bb37
    %447 = llvm.mlir.constant(0 : index) : i64
    %448 = llvm.mlir.constant(2 : index) : i64
    %449 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb39(%447 : i64)
  ^bb39(%450: i64):  // 2 preds: ^bb38, ^bb46
    %451 = llvm.icmp "slt" %450, %448 : i64
    llvm.cond_br %451, ^bb40, ^bb47
  ^bb40:  // pred: ^bb39
    %452 = llvm.mlir.constant(0 : index) : i64
    %453 = llvm.mlir.constant(1 : index) : i64
    %454 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb41(%452 : i64)
  ^bb41(%455: i64):  // 2 preds: ^bb40, ^bb45
    %456 = llvm.icmp "slt" %455, %453 : i64
    llvm.cond_br %456, ^bb42, ^bb46
  ^bb42:  // pred: ^bb41
    %457 = llvm.mlir.constant(0 : index) : i64
    %458 = llvm.mlir.constant(1 : index) : i64
    %459 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb43(%457 : i64)
  ^bb43(%460: i64):  // 2 preds: ^bb42, ^bb44
    %461 = llvm.icmp "slt" %460, %458 : i64
    llvm.cond_br %461, ^bb44, ^bb45
  ^bb44:  // pred: ^bb43
    %462 = llvm.extractvalue %214[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %463 = llvm.mlir.constant(2 : index) : i64
    %464 = llvm.mul %9, %463  : i64
    %465 = llvm.add %464, %450  : i64
    %466 = llvm.add %465, %9  : i64
    %467 = llvm.add %466, %9  : i64
    %468 = llvm.getelementptr %462[%467] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %469 = llvm.load %468 : !llvm.ptr<i32>
    %470 = llvm.extractvalue %441[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %471 = llvm.mlir.constant(2 : index) : i64
    %472 = llvm.mul %445, %471  : i64
    %473 = llvm.add %472, %450  : i64
    %474 = llvm.add %473, %455  : i64
    %475 = llvm.add %474, %460  : i64
    %476 = llvm.getelementptr %470[%475] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %469, %476 : !llvm.ptr<i32>
    %477 = llvm.add %460, %459  : i64
    llvm.br ^bb43(%477 : i64)
  ^bb45:  // pred: ^bb43
    %478 = llvm.add %455, %454  : i64
    llvm.br ^bb41(%478 : i64)
  ^bb46:  // pred: ^bb41
    %479 = llvm.add %450, %449  : i64
    llvm.br ^bb39(%479 : i64)
  ^bb47:  // pred: ^bb39
    %480 = llvm.add %445, %444  : i64
    llvm.br ^bb37(%480 : i64)
  ^bb48:  // pred: ^bb37
    %481 = llvm.mlir.constant(4 : index) : i64
    %482 = llvm.mlir.constant(1 : index) : i64
    %483 = llvm.mlir.null : !llvm.ptr<i64>
    %484 = llvm.getelementptr %483[%481] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %485 = llvm.ptrtoint %484 : !llvm.ptr<i64> to i64
    %486 = llvm.mlir.constant(16 : index) : i64
    %487 = llvm.add %485, %486  : i64
    %488 = llvm.call @malloc(%487) : (i64) -> !llvm.ptr<i8>
    %489 = llvm.bitcast %488 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %490 = llvm.ptrtoint %489 : !llvm.ptr<i64> to i64
    %491 = llvm.mlir.constant(1 : index) : i64
    %492 = llvm.sub %486, %491  : i64
    %493 = llvm.add %490, %492  : i64
    %494 = llvm.urem %493, %486  : i64
    %495 = llvm.sub %493, %494  : i64
    %496 = llvm.inttoptr %495 : i64 to !llvm.ptr<i64>
    %497 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %498 = llvm.insertvalue %489, %497[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %499 = llvm.insertvalue %496, %498[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %500 = llvm.mlir.constant(0 : index) : i64
    %501 = llvm.insertvalue %500, %499[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %502 = llvm.insertvalue %481, %501[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %503 = llvm.insertvalue %482, %502[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %504 = llvm.mlir.constant(0 : index) : i64
    %505 = llvm.mlir.constant(4 : index) : i64
    %506 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb49(%504 : i64)
  ^bb49(%507: i64):  // 2 preds: ^bb48, ^bb50
    %508 = llvm.icmp "slt" %507, %505 : i64
    llvm.cond_br %508, ^bb50, ^bb51
  ^bb50:  // pred: ^bb49
    %509 = llvm.extractvalue %503[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %510 = llvm.getelementptr %509[%507] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %8, %510 : !llvm.ptr<i64>
    %511 = llvm.add %507, %506  : i64
    llvm.br ^bb49(%511 : i64)
  ^bb51:  // pred: ^bb49
    %512 = llvm.mlir.constant(4 : index) : i64
    %513 = llvm.mlir.constant(1 : index) : i64
    %514 = llvm.mlir.null : !llvm.ptr<i64>
    %515 = llvm.getelementptr %514[%512] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %516 = llvm.ptrtoint %515 : !llvm.ptr<i64> to i64
    %517 = llvm.mlir.constant(16 : index) : i64
    %518 = llvm.add %516, %517  : i64
    %519 = llvm.call @malloc(%518) : (i64) -> !llvm.ptr<i8>
    %520 = llvm.bitcast %519 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %521 = llvm.ptrtoint %520 : !llvm.ptr<i64> to i64
    %522 = llvm.mlir.constant(1 : index) : i64
    %523 = llvm.sub %517, %522  : i64
    %524 = llvm.add %521, %523  : i64
    %525 = llvm.urem %524, %517  : i64
    %526 = llvm.sub %524, %525  : i64
    %527 = llvm.inttoptr %526 : i64 to !llvm.ptr<i64>
    %528 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %529 = llvm.insertvalue %520, %528[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %530 = llvm.insertvalue %527, %529[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %531 = llvm.mlir.constant(0 : index) : i64
    %532 = llvm.insertvalue %531, %530[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %533 = llvm.insertvalue %512, %532[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %534 = llvm.insertvalue %513, %533[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %535 = llvm.mlir.constant(0 : index) : i64
    %536 = llvm.mlir.constant(4 : index) : i64
    %537 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb52(%535 : i64)
  ^bb52(%538: i64):  // 2 preds: ^bb51, ^bb53
    %539 = llvm.icmp "slt" %538, %536 : i64
    llvm.cond_br %539, ^bb53, ^bb54
  ^bb53:  // pred: ^bb52
    %540 = llvm.extractvalue %503[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %541 = llvm.getelementptr %540[%538] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %542 = llvm.load %541 : !llvm.ptr<i64>
    %543 = llvm.extractvalue %42[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %544 = llvm.load %543 : !llvm.ptr<i64>
    %545 = llvm.mul %542, %544  : i64
    %546 = llvm.extractvalue %534[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %547 = llvm.getelementptr %546[%538] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %545, %547 : !llvm.ptr<i64>
    %548 = llvm.add %538, %537  : i64
    llvm.br ^bb52(%548 : i64)
  ^bb54:  // pred: ^bb52
    %549 = llvm.mlir.constant(4 : index) : i64
    %550 = llvm.mlir.constant(1 : index) : i64
    %551 = llvm.mlir.null : !llvm.ptr<i1>
    %552 = llvm.getelementptr %551[%549] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %553 = llvm.ptrtoint %552 : !llvm.ptr<i1> to i64
    %554 = llvm.mlir.constant(16 : index) : i64
    %555 = llvm.add %553, %554  : i64
    %556 = llvm.call @malloc(%555) : (i64) -> !llvm.ptr<i8>
    %557 = llvm.bitcast %556 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %558 = llvm.ptrtoint %557 : !llvm.ptr<i1> to i64
    %559 = llvm.mlir.constant(1 : index) : i64
    %560 = llvm.sub %554, %559  : i64
    %561 = llvm.add %558, %560  : i64
    %562 = llvm.urem %561, %554  : i64
    %563 = llvm.sub %561, %562  : i64
    %564 = llvm.inttoptr %563 : i64 to !llvm.ptr<i1>
    %565 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %566 = llvm.insertvalue %557, %565[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %567 = llvm.insertvalue %564, %566[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %568 = llvm.mlir.constant(0 : index) : i64
    %569 = llvm.insertvalue %568, %567[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %570 = llvm.insertvalue %549, %569[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %571 = llvm.insertvalue %550, %570[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %572 = llvm.mlir.constant(0 : index) : i64
    %573 = llvm.mlir.constant(4 : index) : i64
    %574 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb55(%572 : i64)
  ^bb55(%575: i64):  // 2 preds: ^bb54, ^bb56
    %576 = llvm.icmp "slt" %575, %573 : i64
    llvm.cond_br %576, ^bb56, ^bb57
  ^bb56:  // pred: ^bb55
    %577 = llvm.extractvalue %35[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %578 = llvm.getelementptr %577[%575] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %579 = llvm.load %578 : !llvm.ptr<i64>
    %580 = llvm.extractvalue %534[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %581 = llvm.getelementptr %580[%575] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %582 = llvm.load %581 : !llvm.ptr<i64>
    %583 = llvm.icmp "eq" %579, %582 : i64
    %584 = llvm.extractvalue %571[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %585 = llvm.getelementptr %584[%575] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %583, %585 : !llvm.ptr<i1>
    %586 = llvm.add %575, %574  : i64
    llvm.br ^bb55(%586 : i64)
  ^bb57:  // pred: ^bb55
    %587 = llvm.mlir.constant(4 : index) : i64
    %588 = llvm.mlir.constant(1 : index) : i64
    %589 = llvm.mlir.null : !llvm.ptr<i64>
    %590 = llvm.getelementptr %589[%587] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %591 = llvm.ptrtoint %590 : !llvm.ptr<i64> to i64
    %592 = llvm.mlir.constant(16 : index) : i64
    %593 = llvm.add %591, %592  : i64
    %594 = llvm.call @malloc(%593) : (i64) -> !llvm.ptr<i8>
    %595 = llvm.bitcast %594 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %596 = llvm.ptrtoint %595 : !llvm.ptr<i64> to i64
    %597 = llvm.mlir.constant(1 : index) : i64
    %598 = llvm.sub %592, %597  : i64
    %599 = llvm.add %596, %598  : i64
    %600 = llvm.urem %599, %592  : i64
    %601 = llvm.sub %599, %600  : i64
    %602 = llvm.inttoptr %601 : i64 to !llvm.ptr<i64>
    %603 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %604 = llvm.insertvalue %595, %603[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %605 = llvm.insertvalue %602, %604[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %606 = llvm.mlir.constant(0 : index) : i64
    %607 = llvm.insertvalue %606, %605[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %608 = llvm.insertvalue %587, %607[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %609 = llvm.insertvalue %588, %608[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %610 = llvm.mlir.constant(0 : index) : i64
    %611 = llvm.mlir.constant(4 : index) : i64
    %612 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb58(%610 : i64)
  ^bb58(%613: i64):  // 2 preds: ^bb57, ^bb59
    %614 = llvm.icmp "slt" %613, %611 : i64
    llvm.cond_br %614, ^bb59, ^bb60
  ^bb59:  // pred: ^bb58
    %615 = llvm.extractvalue %571[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %616 = llvm.getelementptr %615[%613] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %617 = llvm.load %616 : !llvm.ptr<i1>
    %618 = llvm.extractvalue %503[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %619 = llvm.getelementptr %618[%613] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %620 = llvm.load %619 : !llvm.ptr<i64>
    %621 = llvm.extractvalue %53[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %622 = llvm.getelementptr %621[%613] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %623 = llvm.load %622 : !llvm.ptr<i64>
    %624 = llvm.select %617, %620, %623 : i1, i64
    %625 = llvm.extractvalue %609[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %626 = llvm.getelementptr %625[%613] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %624, %626 : !llvm.ptr<i64>
    %627 = llvm.add %613, %612  : i64
    llvm.br ^bb58(%627 : i64)
  ^bb60:  // pred: ^bb58
    %628 = llvm.extractvalue %609[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %629 = llvm.getelementptr %628[%9] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %630 = llvm.load %629 : !llvm.ptr<i64>
    %631 = llvm.extractvalue %609[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %632 = llvm.getelementptr %631[%10] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %633 = llvm.load %632 : !llvm.ptr<i64>
    %634 = llvm.extractvalue %609[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %635 = llvm.getelementptr %634[%7] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %636 = llvm.load %635 : !llvm.ptr<i64>
    %637 = llvm.mlir.constant(2 : index) : i64
    %638 = llvm.mlir.constant(1 : index) : i64
    %639 = llvm.mul %636, %633  : i64
    %640 = llvm.mul %639, %637  : i64
    %641 = llvm.mul %640, %630  : i64
    %642 = llvm.mlir.null : !llvm.ptr<i32>
    %643 = llvm.getelementptr %642[%641] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %644 = llvm.ptrtoint %643 : !llvm.ptr<i32> to i64
    %645 = llvm.mlir.constant(16 : index) : i64
    %646 = llvm.add %644, %645  : i64
    %647 = llvm.call @malloc(%646) : (i64) -> !llvm.ptr<i8>
    %648 = llvm.bitcast %647 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %649 = llvm.ptrtoint %648 : !llvm.ptr<i32> to i64
    %650 = llvm.mlir.constant(1 : index) : i64
    %651 = llvm.sub %645, %650  : i64
    %652 = llvm.add %649, %651  : i64
    %653 = llvm.urem %652, %645  : i64
    %654 = llvm.sub %652, %653  : i64
    %655 = llvm.inttoptr %654 : i64 to !llvm.ptr<i32>
    %656 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %657 = llvm.insertvalue %648, %656[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %658 = llvm.insertvalue %655, %657[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %659 = llvm.mlir.constant(0 : index) : i64
    %660 = llvm.insertvalue %659, %658[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %661 = llvm.insertvalue %630, %660[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %662 = llvm.insertvalue %637, %661[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %663 = llvm.insertvalue %633, %662[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %664 = llvm.insertvalue %636, %663[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %665 = llvm.insertvalue %640, %664[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %666 = llvm.insertvalue %639, %665[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %667 = llvm.insertvalue %636, %666[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %668 = llvm.insertvalue %638, %667[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %669 = llvm.mlir.constant(0 : index) : i64
    %670 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb61(%669 : i64)
  ^bb61(%671: i64):  // 2 preds: ^bb60, ^bb71
    %672 = llvm.icmp "slt" %671, %630 : i64
    llvm.cond_br %672, ^bb62, ^bb72
  ^bb62:  // pred: ^bb61
    %673 = llvm.mlir.constant(0 : index) : i64
    %674 = llvm.mlir.constant(2 : index) : i64
    %675 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb63(%673 : i64)
  ^bb63(%676: i64):  // 2 preds: ^bb62, ^bb70
    %677 = llvm.icmp "slt" %676, %674 : i64
    llvm.cond_br %677, ^bb64, ^bb71
  ^bb64:  // pred: ^bb63
    %678 = llvm.mlir.constant(0 : index) : i64
    %679 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb65(%678 : i64)
  ^bb65(%680: i64):  // 2 preds: ^bb64, ^bb69
    %681 = llvm.icmp "slt" %680, %633 : i64
    llvm.cond_br %681, ^bb66, ^bb70
  ^bb66:  // pred: ^bb65
    %682 = llvm.mlir.constant(0 : index) : i64
    %683 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb67(%682 : i64)
  ^bb67(%684: i64):  // 2 preds: ^bb66, ^bb68
    %685 = llvm.icmp "slt" %684, %636 : i64
    llvm.cond_br %685, ^bb68, ^bb69
  ^bb68:  // pred: ^bb67
    %686 = llvm.extractvalue %214[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %687 = llvm.mlir.constant(2 : index) : i64
    %688 = llvm.mul %9, %687  : i64
    %689 = llvm.add %688, %676  : i64
    %690 = llvm.add %689, %9  : i64
    %691 = llvm.add %690, %9  : i64
    %692 = llvm.getelementptr %686[%691] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %693 = llvm.load %692 : !llvm.ptr<i32>
    %694 = llvm.extractvalue %668[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %695 = llvm.extractvalue %668[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %696 = llvm.mul %671, %695  : i64
    %697 = llvm.extractvalue %668[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %698 = llvm.mul %676, %697  : i64
    %699 = llvm.add %696, %698  : i64
    %700 = llvm.extractvalue %668[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %701 = llvm.mul %680, %700  : i64
    %702 = llvm.add %699, %701  : i64
    %703 = llvm.add %702, %684  : i64
    %704 = llvm.getelementptr %694[%703] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %693, %704 : !llvm.ptr<i32>
    %705 = llvm.add %684, %683  : i64
    llvm.br ^bb67(%705 : i64)
  ^bb69:  // pred: ^bb67
    %706 = llvm.add %680, %679  : i64
    llvm.br ^bb65(%706 : i64)
  ^bb70:  // pred: ^bb65
    %707 = llvm.add %676, %675  : i64
    llvm.br ^bb63(%707 : i64)
  ^bb71:  // pred: ^bb63
    %708 = llvm.add %671, %670  : i64
    llvm.br ^bb61(%708 : i64)
  ^bb72:  // pred: ^bb61
    %709 = llvm.mlir.constant(1 : index) : i64
    %710 = llvm.mlir.constant(2 : index) : i64
    %711 = llvm.mlir.constant(1 : index) : i64
    %712 = llvm.mlir.constant(1 : index) : i64
    %713 = llvm.mlir.constant(1 : index) : i64
    %714 = llvm.mlir.constant(2 : index) : i64
    %715 = llvm.mlir.null : !llvm.ptr<i1>
    %716 = llvm.getelementptr %715[%714] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %717 = llvm.ptrtoint %716 : !llvm.ptr<i1> to i64
    %718 = llvm.mlir.constant(16 : index) : i64
    %719 = llvm.add %717, %718  : i64
    %720 = llvm.call @malloc(%719) : (i64) -> !llvm.ptr<i8>
    %721 = llvm.bitcast %720 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %722 = llvm.ptrtoint %721 : !llvm.ptr<i1> to i64
    %723 = llvm.mlir.constant(1 : index) : i64
    %724 = llvm.sub %718, %723  : i64
    %725 = llvm.add %722, %724  : i64
    %726 = llvm.urem %725, %718  : i64
    %727 = llvm.sub %725, %726  : i64
    %728 = llvm.inttoptr %727 : i64 to !llvm.ptr<i1>
    %729 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>
    %730 = llvm.insertvalue %721, %729[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %731 = llvm.insertvalue %728, %730[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %732 = llvm.mlir.constant(0 : index) : i64
    %733 = llvm.insertvalue %732, %731[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %734 = llvm.insertvalue %709, %733[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %735 = llvm.insertvalue %710, %734[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %736 = llvm.insertvalue %711, %735[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %737 = llvm.insertvalue %712, %736[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %738 = llvm.insertvalue %710, %737[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %739 = llvm.insertvalue %711, %738[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %740 = llvm.insertvalue %712, %739[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %741 = llvm.insertvalue %713, %740[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %742 = llvm.mlir.constant(0 : index) : i64
    %743 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb73(%742 : i64)
  ^bb73(%744: i64):  // 2 preds: ^bb72, ^bb83
    %745 = llvm.icmp "slt" %744, %630 : i64
    llvm.cond_br %745, ^bb74, ^bb84
  ^bb74:  // pred: ^bb73
    %746 = llvm.mlir.constant(0 : index) : i64
    %747 = llvm.mlir.constant(2 : index) : i64
    %748 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb75(%746 : i64)
  ^bb75(%749: i64):  // 2 preds: ^bb74, ^bb82
    %750 = llvm.icmp "slt" %749, %747 : i64
    llvm.cond_br %750, ^bb76, ^bb83
  ^bb76:  // pred: ^bb75
    %751 = llvm.mlir.constant(0 : index) : i64
    %752 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb77(%751 : i64)
  ^bb77(%753: i64):  // 2 preds: ^bb76, ^bb81
    %754 = llvm.icmp "slt" %753, %633 : i64
    llvm.cond_br %754, ^bb78, ^bb82
  ^bb78:  // pred: ^bb77
    %755 = llvm.mlir.constant(0 : index) : i64
    %756 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb79(%755 : i64)
  ^bb79(%757: i64):  // 2 preds: ^bb78, ^bb80
    %758 = llvm.icmp "slt" %757, %636 : i64
    llvm.cond_br %758, ^bb80, ^bb81
  ^bb80:  // pred: ^bb79
    %759 = llvm.extractvalue %668[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %760 = llvm.extractvalue %668[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %761 = llvm.mul %744, %760  : i64
    %762 = llvm.extractvalue %668[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %763 = llvm.mul %749, %762  : i64
    %764 = llvm.add %761, %763  : i64
    %765 = llvm.extractvalue %668[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %766 = llvm.mul %753, %765  : i64
    %767 = llvm.add %764, %766  : i64
    %768 = llvm.add %767, %757  : i64
    %769 = llvm.getelementptr %759[%768] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %770 = llvm.load %769 : !llvm.ptr<i32>
    %771 = llvm.icmp "ne" %770, %6 : i32
    %772 = llvm.extractvalue %741[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %773 = llvm.mlir.constant(2 : index) : i64
    %774 = llvm.mul %744, %773  : i64
    %775 = llvm.add %774, %749  : i64
    %776 = llvm.add %775, %753  : i64
    %777 = llvm.add %776, %757  : i64
    %778 = llvm.getelementptr %772[%777] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %771, %778 : !llvm.ptr<i1>
    %779 = llvm.add %757, %756  : i64
    llvm.br ^bb79(%779 : i64)
  ^bb81:  // pred: ^bb79
    %780 = llvm.add %753, %752  : i64
    llvm.br ^bb77(%780 : i64)
  ^bb82:  // pred: ^bb77
    %781 = llvm.add %749, %748  : i64
    llvm.br ^bb75(%781 : i64)
  ^bb83:  // pred: ^bb75
    %782 = llvm.add %744, %743  : i64
    llvm.br ^bb73(%782 : i64)
  ^bb84:  // pred: ^bb73
    %783 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>
    %784 = llvm.insertvalue %441, %783[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %785 = llvm.insertvalue %741, %784[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> 
    llvm.return %785 : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>>) attributes {input_names = ["v5_0"], llvm.emit_c_interface, output_names = ["v4_0", "v3_0"]} {
    %0 = llvm.load %arg1 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>>
    %1 = llvm.extractvalue %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %2 = llvm.extractvalue %0[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %3 = llvm.extractvalue %0[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %4 = llvm.extractvalue %0[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %5 = llvm.extractvalue %0[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %6 = llvm.call @main_graph(%1, %2, %3, %4, %5) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>
    llvm.store %6, %arg0 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>>
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
    llvm.call @_mlir_ciface_main_graph(%2, %6) : (!llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>>) -> ()
    %23 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %24 = llvm.extractvalue %23[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %25 = llvm.extractvalue %23[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %26 = llvm.mlir.constant(2 : i64) : i64
    %27 = llvm.mlir.constant(16 : i64) : i64
    %28 = llvm.call @malloc(%27) : (i64) -> !llvm.ptr<i8>
    %29 = llvm.bitcast %28 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %30 = llvm.mlir.constant(4 : i64) : i64
    %31 = llvm.call @omTensorCreateUntyped(%30) : (i64) -> !llvm.ptr<i8>
    %32 = llvm.mlir.constant(1 : i64) : i64
    %33 = llvm.extractvalue %24[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %34 = llvm.bitcast %33 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %35 = llvm.extractvalue %24[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %36 = llvm.bitcast %35 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%31, %32, %34, %36) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %37 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%31, %37) : (!llvm.ptr<i8>, i64) -> ()
    %38 = llvm.call @omTensorGetShape(%31) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %39 = llvm.call @omTensorGetStrides(%31) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %40 = llvm.mlir.constant(0 : i64) : i64
    %41 = llvm.extractvalue %24[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %42 = llvm.getelementptr %38[%40] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %41, %42 : !llvm.ptr<i64>
    %43 = llvm.extractvalue %24[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %44 = llvm.getelementptr %39[%40] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %43, %44 : !llvm.ptr<i64>
    %45 = llvm.mlir.constant(1 : i64) : i64
    %46 = llvm.extractvalue %24[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %47 = llvm.getelementptr %38[%45] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %46, %47 : !llvm.ptr<i64>
    %48 = llvm.extractvalue %24[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %49 = llvm.getelementptr %39[%45] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %48, %49 : !llvm.ptr<i64>
    %50 = llvm.mlir.constant(2 : i64) : i64
    %51 = llvm.extractvalue %24[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %52 = llvm.getelementptr %38[%50] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %51, %52 : !llvm.ptr<i64>
    %53 = llvm.extractvalue %24[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %54 = llvm.getelementptr %39[%50] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %53, %54 : !llvm.ptr<i64>
    %55 = llvm.mlir.constant(3 : i64) : i64
    %56 = llvm.extractvalue %24[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %57 = llvm.getelementptr %38[%55] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %56, %57 : !llvm.ptr<i64>
    %58 = llvm.extractvalue %24[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %59 = llvm.getelementptr %39[%55] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %58, %59 : !llvm.ptr<i64>
    %60 = llvm.mlir.constant(0 : i64) : i64
    %61 = llvm.getelementptr %29[%60] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %31, %61 : !llvm.ptr<ptr<i8>>
    %62 = llvm.mlir.constant(4 : i64) : i64
    %63 = llvm.call @omTensorCreateUntyped(%62) : (i64) -> !llvm.ptr<i8>
    %64 = llvm.mlir.constant(1 : i64) : i64
    %65 = llvm.extractvalue %25[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %66 = llvm.bitcast %65 : !llvm.ptr<i1> to !llvm.ptr<i8>
    %67 = llvm.extractvalue %25[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %68 = llvm.bitcast %67 : !llvm.ptr<i1> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%63, %64, %66, %68) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %69 = llvm.mlir.constant(9 : i64) : i64
    llvm.call @omTensorSetDataType(%63, %69) : (!llvm.ptr<i8>, i64) -> ()
    %70 = llvm.call @omTensorGetShape(%63) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %71 = llvm.call @omTensorGetStrides(%63) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %72 = llvm.mlir.constant(0 : i64) : i64
    %73 = llvm.extractvalue %25[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %74 = llvm.getelementptr %70[%72] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %73, %74 : !llvm.ptr<i64>
    %75 = llvm.extractvalue %25[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %76 = llvm.getelementptr %71[%72] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %75, %76 : !llvm.ptr<i64>
    %77 = llvm.mlir.constant(1 : i64) : i64
    %78 = llvm.extractvalue %25[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %79 = llvm.getelementptr %70[%77] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %78, %79 : !llvm.ptr<i64>
    %80 = llvm.extractvalue %25[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %81 = llvm.getelementptr %71[%77] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %80, %81 : !llvm.ptr<i64>
    %82 = llvm.mlir.constant(2 : i64) : i64
    %83 = llvm.extractvalue %25[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %84 = llvm.getelementptr %70[%82] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %83, %84 : !llvm.ptr<i64>
    %85 = llvm.extractvalue %25[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %86 = llvm.getelementptr %71[%82] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %85, %86 : !llvm.ptr<i64>
    %87 = llvm.mlir.constant(3 : i64) : i64
    %88 = llvm.extractvalue %25[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %89 = llvm.getelementptr %70[%87] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %88, %89 : !llvm.ptr<i64>
    %90 = llvm.extractvalue %25[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %91 = llvm.getelementptr %71[%87] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %90, %91 : !llvm.ptr<i64>
    %92 = llvm.mlir.constant(1 : i64) : i64
    %93 = llvm.getelementptr %29[%92] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %63, %93 : !llvm.ptr<ptr<i8>>
    %94 = llvm.call @omTensorListCreate(%29, %26, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %94 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<140 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<140 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

