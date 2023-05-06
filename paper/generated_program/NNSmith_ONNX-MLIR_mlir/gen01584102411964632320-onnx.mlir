module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [2 , 1 , 1] , \22name\22 : \22v2_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i32\22 , \22dims\22 : [2] , \22name\22 : \22v5_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 2 , 1 , 2] , \22name\22 : \22v0_0\22 }\0A ,    { \22type\22 : \22i64\22 , \22dims\22 : [1 , 2 , 1 , 2] , \22name\22 : \22v6_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.mlir.global internal constant @constant_8(dense<7> : tensor<1x1x1x2xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x array<1 x array<1 x array<2 x i32>>>>
  llvm.mlir.global internal constant @constant_7(dense<[1, 2, 1, 2]> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.mlir.global internal constant @constant_6(dense<-1> : tensor<i64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i64>
  llvm.mlir.global internal constant @constant_5(dense<[1, 2, 1, 2]> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.mlir.global internal constant @constant_4(dense<[1, 2, 1, 2]> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.mlir.global internal constant @constant_3(dense<-1> : tensor<i64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i64>
  llvm.mlir.global internal constant @constant_2(dense<[1, 2, 1, 2]> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>)> attributes {input_names = ["v2_0"], llvm.emit_c_interface, output_names = ["v5_0", "v0_0", "v6_0"]} {
    %0 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>
    %1 = llvm.insertvalue %arg0, %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %2 = llvm.insertvalue %arg1, %1[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %3 = llvm.insertvalue %arg2, %2[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %4 = llvm.insertvalue %arg3, %3[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %5 = llvm.insertvalue %arg6, %4[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %6 = llvm.insertvalue %arg4, %5[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %7 = llvm.insertvalue %arg7, %6[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %8 = llvm.insertvalue %arg5, %7[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %9 = llvm.insertvalue %arg8, %8[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %10 = llvm.mlir.constant(1 : i64) : i64
    %11 = llvm.mlir.constant(0 : index) : i64
    %12 = llvm.mlir.addressof @constant_2 : !llvm.ptr<array<4 x i64>>
    %13 = llvm.bitcast %12 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %14 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %15 = llvm.insertvalue %13, %14[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %16 = llvm.insertvalue %13, %15[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %17 = llvm.mlir.constant(0 : index) : i64
    %18 = llvm.insertvalue %17, %16[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %19 = llvm.mlir.constant(4 : index) : i64
    %20 = llvm.insertvalue %19, %18[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %21 = llvm.mlir.constant(1 : index) : i64
    %22 = llvm.insertvalue %21, %20[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %23 = llvm.mlir.addressof @constant_3 : !llvm.ptr<array<1 x i64>>
    %24 = llvm.bitcast %23 : !llvm.ptr<array<1 x i64>> to !llvm.ptr<i64>
    %25 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64)>
    %26 = llvm.insertvalue %24, %25[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %27 = llvm.insertvalue %24, %26[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %28 = llvm.mlir.constant(0 : index) : i64
    %29 = llvm.insertvalue %28, %27[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %30 = llvm.mlir.addressof @constant_4 : !llvm.ptr<array<4 x i64>>
    %31 = llvm.bitcast %30 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %32 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %33 = llvm.insertvalue %31, %32[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %34 = llvm.insertvalue %31, %33[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %35 = llvm.mlir.constant(0 : index) : i64
    %36 = llvm.insertvalue %35, %34[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %37 = llvm.mlir.constant(4 : index) : i64
    %38 = llvm.insertvalue %37, %36[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %39 = llvm.mlir.constant(1 : index) : i64
    %40 = llvm.insertvalue %39, %38[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %41 = llvm.mlir.addressof @constant_5 : !llvm.ptr<array<4 x i64>>
    %42 = llvm.bitcast %41 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %43 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %44 = llvm.insertvalue %42, %43[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %45 = llvm.insertvalue %42, %44[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %46 = llvm.mlir.constant(0 : index) : i64
    %47 = llvm.insertvalue %46, %45[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %48 = llvm.mlir.constant(4 : index) : i64
    %49 = llvm.insertvalue %48, %47[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %50 = llvm.mlir.constant(1 : index) : i64
    %51 = llvm.insertvalue %50, %49[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %52 = llvm.mlir.addressof @constant_6 : !llvm.ptr<array<1 x i64>>
    %53 = llvm.bitcast %52 : !llvm.ptr<array<1 x i64>> to !llvm.ptr<i64>
    %54 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64)>
    %55 = llvm.insertvalue %53, %54[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %56 = llvm.insertvalue %53, %55[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %57 = llvm.mlir.constant(0 : index) : i64
    %58 = llvm.insertvalue %57, %56[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %59 = llvm.mlir.addressof @constant_7 : !llvm.ptr<array<4 x i64>>
    %60 = llvm.bitcast %59 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %61 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %62 = llvm.insertvalue %60, %61[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %63 = llvm.insertvalue %60, %62[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %64 = llvm.mlir.constant(0 : index) : i64
    %65 = llvm.insertvalue %64, %63[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %66 = llvm.mlir.constant(4 : index) : i64
    %67 = llvm.insertvalue %66, %65[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %68 = llvm.mlir.constant(1 : index) : i64
    %69 = llvm.insertvalue %68, %67[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %70 = llvm.mlir.addressof @constant_8 : !llvm.ptr<array<1 x array<1 x array<1 x array<2 x i32>>>>>
    %71 = llvm.bitcast %70 : !llvm.ptr<array<1 x array<1 x array<1 x array<2 x i32>>>>> to !llvm.ptr<i32>
    %72 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %73 = llvm.insertvalue %71, %72[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %74 = llvm.insertvalue %71, %73[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %75 = llvm.mlir.constant(0 : index) : i64
    %76 = llvm.insertvalue %75, %74[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %77 = llvm.mlir.constant(1 : index) : i64
    %78 = llvm.insertvalue %77, %76[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %79 = llvm.mlir.constant(2 : index) : i64
    %80 = llvm.insertvalue %79, %78[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %81 = llvm.mlir.constant(1 : index) : i64
    %82 = llvm.insertvalue %81, %80[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %83 = llvm.mlir.constant(2 : index) : i64
    %84 = llvm.insertvalue %83, %82[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %85 = llvm.mlir.constant(1 : index) : i64
    %86 = llvm.insertvalue %85, %84[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %87 = llvm.mlir.constant(2 : index) : i64
    %88 = llvm.insertvalue %87, %86[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %89 = llvm.mlir.constant(2 : index) : i64
    %90 = llvm.insertvalue %89, %88[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %91 = llvm.mlir.constant(1 : index) : i64
    %92 = llvm.insertvalue %91, %90[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %93 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %94 = llvm.extractvalue %9[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %95 = llvm.extractvalue %9[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %96 = llvm.insertvalue %94, %93[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %97 = llvm.insertvalue %95, %96[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %98 = llvm.mlir.constant(0 : index) : i64
    %99 = llvm.insertvalue %98, %97[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %100 = llvm.mlir.constant(2 : index) : i64
    %101 = llvm.insertvalue %100, %99[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %102 = llvm.mlir.constant(1 : index) : i64
    %103 = llvm.insertvalue %102, %101[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %104 = llvm.mlir.constant(1 : index) : i64
    %105 = llvm.mlir.constant(2 : index) : i64
    %106 = llvm.mlir.constant(1 : index) : i64
    %107 = llvm.mlir.constant(2 : index) : i64
    %108 = llvm.mlir.constant(1 : index) : i64
    %109 = llvm.mlir.constant(2 : index) : i64
    %110 = llvm.mlir.constant(4 : index) : i64
    %111 = llvm.mlir.constant(4 : index) : i64
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
    %131 = llvm.insertvalue %104, %130[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %132 = llvm.insertvalue %105, %131[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %133 = llvm.insertvalue %106, %132[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %134 = llvm.insertvalue %107, %133[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %135 = llvm.insertvalue %110, %134[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %136 = llvm.insertvalue %109, %135[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %137 = llvm.insertvalue %107, %136[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %138 = llvm.insertvalue %108, %137[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
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
    %155 = llvm.mlir.constant(2 : index) : i64
    %156 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%154 : i64)
  ^bb7(%157: i64):  // 2 preds: ^bb6, ^bb8
    %158 = llvm.icmp "slt" %157, %155 : i64
    llvm.cond_br %158, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %159 = llvm.extractvalue %9[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %160 = llvm.add %147, %152  : i64
    %161 = llvm.add %160, %11  : i64
    %162 = llvm.getelementptr %159[%161] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %163 = llvm.load %162 : !llvm.ptr<i32>
    %164 = llvm.extractvalue %92[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %165 = llvm.mlir.constant(2 : index) : i64
    %166 = llvm.mul %142, %165  : i64
    %167 = llvm.mlir.constant(2 : index) : i64
    %168 = llvm.mul %11, %167  : i64
    %169 = llvm.add %166, %168  : i64
    %170 = llvm.mlir.constant(2 : index) : i64
    %171 = llvm.mul %152, %170  : i64
    %172 = llvm.add %169, %171  : i64
    %173 = llvm.add %172, %157  : i64
    %174 = llvm.getelementptr %164[%173] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %175 = llvm.load %174 : !llvm.ptr<i32>
    %176 = llvm.add %163, %175  : i32
    %177 = llvm.extractvalue %138[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %178 = llvm.mlir.constant(4 : index) : i64
    %179 = llvm.mul %142, %178  : i64
    %180 = llvm.mlir.constant(2 : index) : i64
    %181 = llvm.mul %147, %180  : i64
    %182 = llvm.add %179, %181  : i64
    %183 = llvm.mlir.constant(2 : index) : i64
    %184 = llvm.mul %152, %183  : i64
    %185 = llvm.add %182, %184  : i64
    %186 = llvm.add %185, %157  : i64
    %187 = llvm.getelementptr %177[%186] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %176, %187 : !llvm.ptr<i32>
    %188 = llvm.add %157, %156  : i64
    llvm.br ^bb7(%188 : i64)
  ^bb9:  // pred: ^bb7
    %189 = llvm.add %152, %151  : i64
    llvm.br ^bb5(%189 : i64)
  ^bb10:  // pred: ^bb5
    %190 = llvm.add %147, %146  : i64
    llvm.br ^bb3(%190 : i64)
  ^bb11:  // pred: ^bb3
    %191 = llvm.add %142, %141  : i64
    llvm.br ^bb1(%191 : i64)
  ^bb12:  // pred: ^bb1
    %192 = llvm.mlir.constant(4 : index) : i64
    %193 = llvm.mlir.constant(1 : index) : i64
    %194 = llvm.mlir.null : !llvm.ptr<i64>
    %195 = llvm.getelementptr %194[%192] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %196 = llvm.ptrtoint %195 : !llvm.ptr<i64> to i64
    %197 = llvm.mlir.constant(16 : index) : i64
    %198 = llvm.add %196, %197  : i64
    %199 = llvm.call @malloc(%198) : (i64) -> !llvm.ptr<i8>
    %200 = llvm.bitcast %199 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %201 = llvm.ptrtoint %200 : !llvm.ptr<i64> to i64
    %202 = llvm.mlir.constant(1 : index) : i64
    %203 = llvm.sub %197, %202  : i64
    %204 = llvm.add %201, %203  : i64
    %205 = llvm.urem %204, %197  : i64
    %206 = llvm.sub %204, %205  : i64
    %207 = llvm.inttoptr %206 : i64 to !llvm.ptr<i64>
    %208 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %209 = llvm.insertvalue %200, %208[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %210 = llvm.insertvalue %207, %209[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %211 = llvm.mlir.constant(0 : index) : i64
    %212 = llvm.insertvalue %211, %210[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %213 = llvm.insertvalue %192, %212[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %214 = llvm.insertvalue %193, %213[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %215 = llvm.mlir.constant(0 : index) : i64
    %216 = llvm.mlir.constant(4 : index) : i64
    %217 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%215 : i64)
  ^bb13(%218: i64):  // 2 preds: ^bb12, ^bb14
    %219 = llvm.icmp "slt" %218, %216 : i64
    llvm.cond_br %219, ^bb14, ^bb15
  ^bb14:  // pred: ^bb13
    %220 = llvm.extractvalue %214[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %221 = llvm.getelementptr %220[%218] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %10, %221 : !llvm.ptr<i64>
    %222 = llvm.add %218, %217  : i64
    llvm.br ^bb13(%222 : i64)
  ^bb15:  // pred: ^bb13
    %223 = llvm.mlir.constant(4 : index) : i64
    %224 = llvm.mlir.constant(1 : index) : i64
    %225 = llvm.mlir.null : !llvm.ptr<i64>
    %226 = llvm.getelementptr %225[%223] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %227 = llvm.ptrtoint %226 : !llvm.ptr<i64> to i64
    %228 = llvm.mlir.constant(16 : index) : i64
    %229 = llvm.add %227, %228  : i64
    %230 = llvm.call @malloc(%229) : (i64) -> !llvm.ptr<i8>
    %231 = llvm.bitcast %230 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %232 = llvm.ptrtoint %231 : !llvm.ptr<i64> to i64
    %233 = llvm.mlir.constant(1 : index) : i64
    %234 = llvm.sub %228, %233  : i64
    %235 = llvm.add %232, %234  : i64
    %236 = llvm.urem %235, %228  : i64
    %237 = llvm.sub %235, %236  : i64
    %238 = llvm.inttoptr %237 : i64 to !llvm.ptr<i64>
    %239 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %240 = llvm.insertvalue %231, %239[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %241 = llvm.insertvalue %238, %240[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %242 = llvm.mlir.constant(0 : index) : i64
    %243 = llvm.insertvalue %242, %241[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %244 = llvm.insertvalue %223, %243[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %245 = llvm.insertvalue %224, %244[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %246 = llvm.mlir.constant(0 : index) : i64
    %247 = llvm.mlir.constant(4 : index) : i64
    %248 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb16(%246 : i64)
  ^bb16(%249: i64):  // 2 preds: ^bb15, ^bb17
    %250 = llvm.icmp "slt" %249, %247 : i64
    llvm.cond_br %250, ^bb17, ^bb18
  ^bb17:  // pred: ^bb16
    %251 = llvm.extractvalue %214[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %252 = llvm.getelementptr %251[%249] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %253 = llvm.load %252 : !llvm.ptr<i64>
    %254 = llvm.extractvalue %58[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %255 = llvm.load %254 : !llvm.ptr<i64>
    %256 = llvm.mul %253, %255  : i64
    %257 = llvm.extractvalue %245[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %258 = llvm.getelementptr %257[%249] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %256, %258 : !llvm.ptr<i64>
    %259 = llvm.add %249, %248  : i64
    llvm.br ^bb16(%259 : i64)
  ^bb18:  // pred: ^bb16
    %260 = llvm.mlir.constant(4 : index) : i64
    %261 = llvm.mlir.constant(1 : index) : i64
    %262 = llvm.mlir.null : !llvm.ptr<i1>
    %263 = llvm.getelementptr %262[%260] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %264 = llvm.ptrtoint %263 : !llvm.ptr<i1> to i64
    %265 = llvm.mlir.constant(16 : index) : i64
    %266 = llvm.add %264, %265  : i64
    %267 = llvm.call @malloc(%266) : (i64) -> !llvm.ptr<i8>
    %268 = llvm.bitcast %267 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %269 = llvm.ptrtoint %268 : !llvm.ptr<i1> to i64
    %270 = llvm.mlir.constant(1 : index) : i64
    %271 = llvm.sub %265, %270  : i64
    %272 = llvm.add %269, %271  : i64
    %273 = llvm.urem %272, %265  : i64
    %274 = llvm.sub %272, %273  : i64
    %275 = llvm.inttoptr %274 : i64 to !llvm.ptr<i1>
    %276 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %277 = llvm.insertvalue %268, %276[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %278 = llvm.insertvalue %275, %277[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %279 = llvm.mlir.constant(0 : index) : i64
    %280 = llvm.insertvalue %279, %278[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %281 = llvm.insertvalue %260, %280[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %282 = llvm.insertvalue %261, %281[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %283 = llvm.mlir.constant(0 : index) : i64
    %284 = llvm.mlir.constant(4 : index) : i64
    %285 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%283 : i64)
  ^bb19(%286: i64):  // 2 preds: ^bb18, ^bb20
    %287 = llvm.icmp "slt" %286, %284 : i64
    llvm.cond_br %287, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %288 = llvm.extractvalue %51[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %289 = llvm.getelementptr %288[%286] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %290 = llvm.load %289 : !llvm.ptr<i64>
    %291 = llvm.extractvalue %245[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %292 = llvm.getelementptr %291[%286] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %293 = llvm.load %292 : !llvm.ptr<i64>
    %294 = llvm.icmp "eq" %290, %293 : i64
    %295 = llvm.extractvalue %282[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %296 = llvm.getelementptr %295[%286] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %294, %296 : !llvm.ptr<i1>
    %297 = llvm.add %286, %285  : i64
    llvm.br ^bb19(%297 : i64)
  ^bb21:  // pred: ^bb19
    %298 = llvm.mlir.constant(4 : index) : i64
    %299 = llvm.mlir.constant(1 : index) : i64
    %300 = llvm.mlir.null : !llvm.ptr<i64>
    %301 = llvm.getelementptr %300[%298] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %302 = llvm.ptrtoint %301 : !llvm.ptr<i64> to i64
    %303 = llvm.mlir.constant(16 : index) : i64
    %304 = llvm.add %302, %303  : i64
    %305 = llvm.call @malloc(%304) : (i64) -> !llvm.ptr<i8>
    %306 = llvm.bitcast %305 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %307 = llvm.ptrtoint %306 : !llvm.ptr<i64> to i64
    %308 = llvm.mlir.constant(1 : index) : i64
    %309 = llvm.sub %303, %308  : i64
    %310 = llvm.add %307, %309  : i64
    %311 = llvm.urem %310, %303  : i64
    %312 = llvm.sub %310, %311  : i64
    %313 = llvm.inttoptr %312 : i64 to !llvm.ptr<i64>
    %314 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %315 = llvm.insertvalue %306, %314[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %316 = llvm.insertvalue %313, %315[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %317 = llvm.mlir.constant(0 : index) : i64
    %318 = llvm.insertvalue %317, %316[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %319 = llvm.insertvalue %298, %318[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %320 = llvm.insertvalue %299, %319[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %321 = llvm.mlir.constant(0 : index) : i64
    %322 = llvm.mlir.constant(4 : index) : i64
    %323 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb22(%321 : i64)
  ^bb22(%324: i64):  // 2 preds: ^bb21, ^bb23
    %325 = llvm.icmp "slt" %324, %322 : i64
    llvm.cond_br %325, ^bb23, ^bb24
  ^bb23:  // pred: ^bb22
    %326 = llvm.extractvalue %282[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %327 = llvm.getelementptr %326[%324] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %328 = llvm.load %327 : !llvm.ptr<i1>
    %329 = llvm.extractvalue %214[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %330 = llvm.getelementptr %329[%324] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %331 = llvm.load %330 : !llvm.ptr<i64>
    %332 = llvm.extractvalue %69[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %333 = llvm.getelementptr %332[%324] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %334 = llvm.load %333 : !llvm.ptr<i64>
    %335 = llvm.select %328, %331, %334 : i1, i64
    %336 = llvm.extractvalue %320[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %337 = llvm.getelementptr %336[%324] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %335, %337 : !llvm.ptr<i64>
    %338 = llvm.add %324, %323  : i64
    llvm.br ^bb22(%338 : i64)
  ^bb24:  // pred: ^bb22
    %339 = llvm.mlir.constant(1 : index) : i64
    %340 = llvm.mlir.constant(2 : index) : i64
    %341 = llvm.mlir.constant(1 : index) : i64
    %342 = llvm.mlir.constant(2 : index) : i64
    %343 = llvm.mlir.constant(1 : index) : i64
    %344 = llvm.mlir.constant(2 : index) : i64
    %345 = llvm.mlir.constant(4 : index) : i64
    %346 = llvm.mlir.constant(4 : index) : i64
    %347 = llvm.mlir.null : !llvm.ptr<i32>
    %348 = llvm.getelementptr %347[%346] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %349 = llvm.ptrtoint %348 : !llvm.ptr<i32> to i64
    %350 = llvm.mlir.constant(16 : index) : i64
    %351 = llvm.add %349, %350  : i64
    %352 = llvm.call @malloc(%351) : (i64) -> !llvm.ptr<i8>
    %353 = llvm.bitcast %352 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %354 = llvm.ptrtoint %353 : !llvm.ptr<i32> to i64
    %355 = llvm.mlir.constant(1 : index) : i64
    %356 = llvm.sub %350, %355  : i64
    %357 = llvm.add %354, %356  : i64
    %358 = llvm.urem %357, %350  : i64
    %359 = llvm.sub %357, %358  : i64
    %360 = llvm.inttoptr %359 : i64 to !llvm.ptr<i32>
    %361 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %362 = llvm.insertvalue %353, %361[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %363 = llvm.insertvalue %360, %362[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %364 = llvm.mlir.constant(0 : index) : i64
    %365 = llvm.insertvalue %364, %363[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %366 = llvm.insertvalue %339, %365[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %367 = llvm.insertvalue %340, %366[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %368 = llvm.insertvalue %341, %367[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %369 = llvm.insertvalue %342, %368[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %370 = llvm.insertvalue %345, %369[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %371 = llvm.insertvalue %344, %370[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %372 = llvm.insertvalue %342, %371[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %373 = llvm.insertvalue %343, %372[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %374 = llvm.mlir.constant(0 : index) : i64
    %375 = llvm.mlir.constant(1 : index) : i64
    %376 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb25(%374 : i64)
  ^bb25(%377: i64):  // 2 preds: ^bb24, ^bb35
    %378 = llvm.icmp "slt" %377, %375 : i64
    llvm.cond_br %378, ^bb26, ^bb36
  ^bb26:  // pred: ^bb25
    %379 = llvm.mlir.constant(0 : index) : i64
    %380 = llvm.mlir.constant(2 : index) : i64
    %381 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb27(%379 : i64)
  ^bb27(%382: i64):  // 2 preds: ^bb26, ^bb34
    %383 = llvm.icmp "slt" %382, %380 : i64
    llvm.cond_br %383, ^bb28, ^bb35
  ^bb28:  // pred: ^bb27
    %384 = llvm.mlir.constant(0 : index) : i64
    %385 = llvm.mlir.constant(1 : index) : i64
    %386 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb29(%384 : i64)
  ^bb29(%387: i64):  // 2 preds: ^bb28, ^bb33
    %388 = llvm.icmp "slt" %387, %385 : i64
    llvm.cond_br %388, ^bb30, ^bb34
  ^bb30:  // pred: ^bb29
    %389 = llvm.mlir.constant(0 : index) : i64
    %390 = llvm.mlir.constant(2 : index) : i64
    %391 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb31(%389 : i64)
  ^bb31(%392: i64):  // 2 preds: ^bb30, ^bb32
    %393 = llvm.icmp "slt" %392, %390 : i64
    llvm.cond_br %393, ^bb32, ^bb33
  ^bb32:  // pred: ^bb31
    %394 = llvm.extractvalue %138[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %395 = llvm.mlir.constant(4 : index) : i64
    %396 = llvm.mul %11, %395  : i64
    %397 = llvm.mlir.constant(2 : index) : i64
    %398 = llvm.mul %382, %397  : i64
    %399 = llvm.add %396, %398  : i64
    %400 = llvm.mlir.constant(2 : index) : i64
    %401 = llvm.mul %11, %400  : i64
    %402 = llvm.add %399, %401  : i64
    %403 = llvm.add %402, %392  : i64
    %404 = llvm.getelementptr %394[%403] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %405 = llvm.load %404 : !llvm.ptr<i32>
    %406 = llvm.extractvalue %373[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %407 = llvm.mlir.constant(4 : index) : i64
    %408 = llvm.mul %377, %407  : i64
    %409 = llvm.mlir.constant(2 : index) : i64
    %410 = llvm.mul %382, %409  : i64
    %411 = llvm.add %408, %410  : i64
    %412 = llvm.mlir.constant(2 : index) : i64
    %413 = llvm.mul %387, %412  : i64
    %414 = llvm.add %411, %413  : i64
    %415 = llvm.add %414, %392  : i64
    %416 = llvm.getelementptr %406[%415] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %405, %416 : !llvm.ptr<i32>
    %417 = llvm.add %392, %391  : i64
    llvm.br ^bb31(%417 : i64)
  ^bb33:  // pred: ^bb31
    %418 = llvm.add %387, %386  : i64
    llvm.br ^bb29(%418 : i64)
  ^bb34:  // pred: ^bb29
    %419 = llvm.add %382, %381  : i64
    llvm.br ^bb27(%419 : i64)
  ^bb35:  // pred: ^bb27
    %420 = llvm.add %377, %376  : i64
    llvm.br ^bb25(%420 : i64)
  ^bb36:  // pred: ^bb25
    %421 = llvm.mlir.constant(1 : index) : i64
    %422 = llvm.mlir.constant(2 : index) : i64
    %423 = llvm.mlir.constant(1 : index) : i64
    %424 = llvm.mlir.constant(2 : index) : i64
    %425 = llvm.mlir.constant(1 : index) : i64
    %426 = llvm.mlir.constant(2 : index) : i64
    %427 = llvm.mlir.constant(4 : index) : i64
    %428 = llvm.mlir.constant(4 : index) : i64
    %429 = llvm.mlir.null : !llvm.ptr<i64>
    %430 = llvm.getelementptr %429[%428] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %431 = llvm.ptrtoint %430 : !llvm.ptr<i64> to i64
    %432 = llvm.mlir.constant(16 : index) : i64
    %433 = llvm.add %431, %432  : i64
    %434 = llvm.call @malloc(%433) : (i64) -> !llvm.ptr<i8>
    %435 = llvm.bitcast %434 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %436 = llvm.ptrtoint %435 : !llvm.ptr<i64> to i64
    %437 = llvm.mlir.constant(1 : index) : i64
    %438 = llvm.sub %432, %437  : i64
    %439 = llvm.add %436, %438  : i64
    %440 = llvm.urem %439, %432  : i64
    %441 = llvm.sub %439, %440  : i64
    %442 = llvm.inttoptr %441 : i64 to !llvm.ptr<i64>
    %443 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>
    %444 = llvm.insertvalue %435, %443[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %445 = llvm.insertvalue %442, %444[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %446 = llvm.mlir.constant(0 : index) : i64
    %447 = llvm.insertvalue %446, %445[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %448 = llvm.insertvalue %421, %447[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %449 = llvm.insertvalue %422, %448[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %450 = llvm.insertvalue %423, %449[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %451 = llvm.insertvalue %424, %450[3, 3] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %452 = llvm.insertvalue %427, %451[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %453 = llvm.insertvalue %426, %452[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %454 = llvm.insertvalue %424, %453[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %455 = llvm.insertvalue %425, %454[4, 3] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %456 = llvm.mlir.constant(0 : index) : i64
    %457 = llvm.mlir.constant(1 : index) : i64
    %458 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb37(%456 : i64)
  ^bb37(%459: i64):  // 2 preds: ^bb36, ^bb47
    %460 = llvm.icmp "slt" %459, %457 : i64
    llvm.cond_br %460, ^bb38, ^bb48
  ^bb38:  // pred: ^bb37
    %461 = llvm.mlir.constant(0 : index) : i64
    %462 = llvm.mlir.constant(2 : index) : i64
    %463 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb39(%461 : i64)
  ^bb39(%464: i64):  // 2 preds: ^bb38, ^bb46
    %465 = llvm.icmp "slt" %464, %462 : i64
    llvm.cond_br %465, ^bb40, ^bb47
  ^bb40:  // pred: ^bb39
    %466 = llvm.mlir.constant(0 : index) : i64
    %467 = llvm.mlir.constant(1 : index) : i64
    %468 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb41(%466 : i64)
  ^bb41(%469: i64):  // 2 preds: ^bb40, ^bb45
    %470 = llvm.icmp "slt" %469, %467 : i64
    llvm.cond_br %470, ^bb42, ^bb46
  ^bb42:  // pred: ^bb41
    %471 = llvm.mlir.constant(0 : index) : i64
    %472 = llvm.mlir.constant(2 : index) : i64
    %473 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb43(%471 : i64)
  ^bb43(%474: i64):  // 2 preds: ^bb42, ^bb44
    %475 = llvm.icmp "slt" %474, %472 : i64
    llvm.cond_br %475, ^bb44, ^bb45
  ^bb44:  // pred: ^bb43
    %476 = llvm.extractvalue %138[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %477 = llvm.mlir.constant(4 : index) : i64
    %478 = llvm.mul %459, %477  : i64
    %479 = llvm.mlir.constant(2 : index) : i64
    %480 = llvm.mul %464, %479  : i64
    %481 = llvm.add %478, %480  : i64
    %482 = llvm.mlir.constant(2 : index) : i64
    %483 = llvm.mul %469, %482  : i64
    %484 = llvm.add %481, %483  : i64
    %485 = llvm.add %484, %474  : i64
    %486 = llvm.getelementptr %476[%485] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %487 = llvm.load %486 : !llvm.ptr<i32>
    %488 = llvm.sext %487 : i32 to i64
    %489 = llvm.extractvalue %455[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %490 = llvm.mlir.constant(4 : index) : i64
    %491 = llvm.mul %459, %490  : i64
    %492 = llvm.mlir.constant(2 : index) : i64
    %493 = llvm.mul %464, %492  : i64
    %494 = llvm.add %491, %493  : i64
    %495 = llvm.mlir.constant(2 : index) : i64
    %496 = llvm.mul %469, %495  : i64
    %497 = llvm.add %494, %496  : i64
    %498 = llvm.add %497, %474  : i64
    %499 = llvm.getelementptr %489[%498] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %488, %499 : !llvm.ptr<i64>
    %500 = llvm.add %474, %473  : i64
    llvm.br ^bb43(%500 : i64)
  ^bb45:  // pred: ^bb43
    %501 = llvm.add %469, %468  : i64
    llvm.br ^bb41(%501 : i64)
  ^bb46:  // pred: ^bb41
    %502 = llvm.add %464, %463  : i64
    llvm.br ^bb39(%502 : i64)
  ^bb47:  // pred: ^bb39
    %503 = llvm.add %459, %458  : i64
    llvm.br ^bb37(%503 : i64)
  ^bb48:  // pred: ^bb37
    %504 = llvm.mlir.constant(4 : index) : i64
    %505 = llvm.mlir.constant(1 : index) : i64
    %506 = llvm.mlir.null : !llvm.ptr<i64>
    %507 = llvm.getelementptr %506[%504] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %508 = llvm.ptrtoint %507 : !llvm.ptr<i64> to i64
    %509 = llvm.mlir.constant(16 : index) : i64
    %510 = llvm.add %508, %509  : i64
    %511 = llvm.call @malloc(%510) : (i64) -> !llvm.ptr<i8>
    %512 = llvm.bitcast %511 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %513 = llvm.ptrtoint %512 : !llvm.ptr<i64> to i64
    %514 = llvm.mlir.constant(1 : index) : i64
    %515 = llvm.sub %509, %514  : i64
    %516 = llvm.add %513, %515  : i64
    %517 = llvm.urem %516, %509  : i64
    %518 = llvm.sub %516, %517  : i64
    %519 = llvm.inttoptr %518 : i64 to !llvm.ptr<i64>
    %520 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %521 = llvm.insertvalue %512, %520[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %522 = llvm.insertvalue %519, %521[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %523 = llvm.mlir.constant(0 : index) : i64
    %524 = llvm.insertvalue %523, %522[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %525 = llvm.insertvalue %504, %524[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %526 = llvm.insertvalue %505, %525[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %527 = llvm.mlir.constant(0 : index) : i64
    %528 = llvm.mlir.constant(4 : index) : i64
    %529 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb49(%527 : i64)
  ^bb49(%530: i64):  // 2 preds: ^bb48, ^bb50
    %531 = llvm.icmp "slt" %530, %528 : i64
    llvm.cond_br %531, ^bb50, ^bb51
  ^bb50:  // pred: ^bb49
    %532 = llvm.extractvalue %526[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %533 = llvm.getelementptr %532[%530] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %10, %533 : !llvm.ptr<i64>
    %534 = llvm.add %530, %529  : i64
    llvm.br ^bb49(%534 : i64)
  ^bb51:  // pred: ^bb49
    %535 = llvm.mlir.constant(4 : index) : i64
    %536 = llvm.mlir.constant(1 : index) : i64
    %537 = llvm.mlir.null : !llvm.ptr<i64>
    %538 = llvm.getelementptr %537[%535] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %539 = llvm.ptrtoint %538 : !llvm.ptr<i64> to i64
    %540 = llvm.mlir.constant(16 : index) : i64
    %541 = llvm.add %539, %540  : i64
    %542 = llvm.call @malloc(%541) : (i64) -> !llvm.ptr<i8>
    %543 = llvm.bitcast %542 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %544 = llvm.ptrtoint %543 : !llvm.ptr<i64> to i64
    %545 = llvm.mlir.constant(1 : index) : i64
    %546 = llvm.sub %540, %545  : i64
    %547 = llvm.add %544, %546  : i64
    %548 = llvm.urem %547, %540  : i64
    %549 = llvm.sub %547, %548  : i64
    %550 = llvm.inttoptr %549 : i64 to !llvm.ptr<i64>
    %551 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %552 = llvm.insertvalue %543, %551[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %553 = llvm.insertvalue %550, %552[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %554 = llvm.mlir.constant(0 : index) : i64
    %555 = llvm.insertvalue %554, %553[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %556 = llvm.insertvalue %535, %555[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %557 = llvm.insertvalue %536, %556[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %558 = llvm.mlir.constant(0 : index) : i64
    %559 = llvm.mlir.constant(4 : index) : i64
    %560 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb52(%558 : i64)
  ^bb52(%561: i64):  // 2 preds: ^bb51, ^bb53
    %562 = llvm.icmp "slt" %561, %559 : i64
    llvm.cond_br %562, ^bb53, ^bb54
  ^bb53:  // pred: ^bb52
    %563 = llvm.extractvalue %526[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %564 = llvm.getelementptr %563[%561] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %565 = llvm.load %564 : !llvm.ptr<i64>
    %566 = llvm.extractvalue %29[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %567 = llvm.load %566 : !llvm.ptr<i64>
    %568 = llvm.mul %565, %567  : i64
    %569 = llvm.extractvalue %557[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %570 = llvm.getelementptr %569[%561] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %568, %570 : !llvm.ptr<i64>
    %571 = llvm.add %561, %560  : i64
    llvm.br ^bb52(%571 : i64)
  ^bb54:  // pred: ^bb52
    %572 = llvm.mlir.constant(4 : index) : i64
    %573 = llvm.mlir.constant(1 : index) : i64
    %574 = llvm.mlir.null : !llvm.ptr<i1>
    %575 = llvm.getelementptr %574[%572] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %576 = llvm.ptrtoint %575 : !llvm.ptr<i1> to i64
    %577 = llvm.mlir.constant(16 : index) : i64
    %578 = llvm.add %576, %577  : i64
    %579 = llvm.call @malloc(%578) : (i64) -> !llvm.ptr<i8>
    %580 = llvm.bitcast %579 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %581 = llvm.ptrtoint %580 : !llvm.ptr<i1> to i64
    %582 = llvm.mlir.constant(1 : index) : i64
    %583 = llvm.sub %577, %582  : i64
    %584 = llvm.add %581, %583  : i64
    %585 = llvm.urem %584, %577  : i64
    %586 = llvm.sub %584, %585  : i64
    %587 = llvm.inttoptr %586 : i64 to !llvm.ptr<i1>
    %588 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %589 = llvm.insertvalue %580, %588[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %590 = llvm.insertvalue %587, %589[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %591 = llvm.mlir.constant(0 : index) : i64
    %592 = llvm.insertvalue %591, %590[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %593 = llvm.insertvalue %572, %592[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %594 = llvm.insertvalue %573, %593[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %595 = llvm.mlir.constant(0 : index) : i64
    %596 = llvm.mlir.constant(4 : index) : i64
    %597 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb55(%595 : i64)
  ^bb55(%598: i64):  // 2 preds: ^bb54, ^bb56
    %599 = llvm.icmp "slt" %598, %596 : i64
    llvm.cond_br %599, ^bb56, ^bb57
  ^bb56:  // pred: ^bb55
    %600 = llvm.extractvalue %22[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %601 = llvm.getelementptr %600[%598] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %602 = llvm.load %601 : !llvm.ptr<i64>
    %603 = llvm.extractvalue %557[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %604 = llvm.getelementptr %603[%598] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %605 = llvm.load %604 : !llvm.ptr<i64>
    %606 = llvm.icmp "eq" %602, %605 : i64
    %607 = llvm.extractvalue %594[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %608 = llvm.getelementptr %607[%598] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %606, %608 : !llvm.ptr<i1>
    %609 = llvm.add %598, %597  : i64
    llvm.br ^bb55(%609 : i64)
  ^bb57:  // pred: ^bb55
    %610 = llvm.mlir.constant(4 : index) : i64
    %611 = llvm.mlir.constant(1 : index) : i64
    %612 = llvm.mlir.null : !llvm.ptr<i64>
    %613 = llvm.getelementptr %612[%610] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %614 = llvm.ptrtoint %613 : !llvm.ptr<i64> to i64
    %615 = llvm.mlir.constant(16 : index) : i64
    %616 = llvm.add %614, %615  : i64
    %617 = llvm.call @malloc(%616) : (i64) -> !llvm.ptr<i8>
    %618 = llvm.bitcast %617 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %619 = llvm.ptrtoint %618 : !llvm.ptr<i64> to i64
    %620 = llvm.mlir.constant(1 : index) : i64
    %621 = llvm.sub %615, %620  : i64
    %622 = llvm.add %619, %621  : i64
    %623 = llvm.urem %622, %615  : i64
    %624 = llvm.sub %622, %623  : i64
    %625 = llvm.inttoptr %624 : i64 to !llvm.ptr<i64>
    %626 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %627 = llvm.insertvalue %618, %626[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %628 = llvm.insertvalue %625, %627[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %629 = llvm.mlir.constant(0 : index) : i64
    %630 = llvm.insertvalue %629, %628[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %631 = llvm.insertvalue %610, %630[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %632 = llvm.insertvalue %611, %631[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %633 = llvm.mlir.constant(0 : index) : i64
    %634 = llvm.mlir.constant(4 : index) : i64
    %635 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb58(%633 : i64)
  ^bb58(%636: i64):  // 2 preds: ^bb57, ^bb59
    %637 = llvm.icmp "slt" %636, %634 : i64
    llvm.cond_br %637, ^bb59, ^bb60
  ^bb59:  // pred: ^bb58
    %638 = llvm.extractvalue %594[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %639 = llvm.getelementptr %638[%636] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %640 = llvm.load %639 : !llvm.ptr<i1>
    %641 = llvm.extractvalue %526[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %642 = llvm.getelementptr %641[%636] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %643 = llvm.load %642 : !llvm.ptr<i64>
    %644 = llvm.extractvalue %40[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %645 = llvm.getelementptr %644[%636] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %646 = llvm.load %645 : !llvm.ptr<i64>
    %647 = llvm.select %640, %643, %646 : i1, i64
    %648 = llvm.extractvalue %632[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %649 = llvm.getelementptr %648[%636] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %647, %649 : !llvm.ptr<i64>
    %650 = llvm.add %636, %635  : i64
    llvm.br ^bb58(%650 : i64)
  ^bb60:  // pred: ^bb58
    %651 = llvm.mlir.constant(1 : index) : i64
    %652 = llvm.mlir.constant(2 : index) : i64
    %653 = llvm.mlir.constant(1 : index) : i64
    %654 = llvm.mlir.constant(2 : index) : i64
    %655 = llvm.mlir.constant(1 : index) : i64
    %656 = llvm.mlir.constant(2 : index) : i64
    %657 = llvm.mlir.constant(4 : index) : i64
    %658 = llvm.mlir.constant(4 : index) : i64
    %659 = llvm.mlir.null : !llvm.ptr<i64>
    %660 = llvm.getelementptr %659[%658] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %661 = llvm.ptrtoint %660 : !llvm.ptr<i64> to i64
    %662 = llvm.mlir.constant(16 : index) : i64
    %663 = llvm.add %661, %662  : i64
    %664 = llvm.call @malloc(%663) : (i64) -> !llvm.ptr<i8>
    %665 = llvm.bitcast %664 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %666 = llvm.ptrtoint %665 : !llvm.ptr<i64> to i64
    %667 = llvm.mlir.constant(1 : index) : i64
    %668 = llvm.sub %662, %667  : i64
    %669 = llvm.add %666, %668  : i64
    %670 = llvm.urem %669, %662  : i64
    %671 = llvm.sub %669, %670  : i64
    %672 = llvm.inttoptr %671 : i64 to !llvm.ptr<i64>
    %673 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>
    %674 = llvm.insertvalue %665, %673[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %675 = llvm.insertvalue %672, %674[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %676 = llvm.mlir.constant(0 : index) : i64
    %677 = llvm.insertvalue %676, %675[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %678 = llvm.insertvalue %651, %677[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %679 = llvm.insertvalue %652, %678[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %680 = llvm.insertvalue %653, %679[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %681 = llvm.insertvalue %654, %680[3, 3] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %682 = llvm.insertvalue %657, %681[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %683 = llvm.insertvalue %656, %682[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %684 = llvm.insertvalue %654, %683[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %685 = llvm.insertvalue %655, %684[4, 3] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %686 = llvm.mlir.constant(0 : index) : i64
    %687 = llvm.mlir.constant(1 : index) : i64
    %688 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb61(%686 : i64)
  ^bb61(%689: i64):  // 2 preds: ^bb60, ^bb71
    %690 = llvm.icmp "slt" %689, %687 : i64
    llvm.cond_br %690, ^bb62, ^bb72
  ^bb62:  // pred: ^bb61
    %691 = llvm.mlir.constant(0 : index) : i64
    %692 = llvm.mlir.constant(2 : index) : i64
    %693 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb63(%691 : i64)
  ^bb63(%694: i64):  // 2 preds: ^bb62, ^bb70
    %695 = llvm.icmp "slt" %694, %692 : i64
    llvm.cond_br %695, ^bb64, ^bb71
  ^bb64:  // pred: ^bb63
    %696 = llvm.mlir.constant(0 : index) : i64
    %697 = llvm.mlir.constant(1 : index) : i64
    %698 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb65(%696 : i64)
  ^bb65(%699: i64):  // 2 preds: ^bb64, ^bb69
    %700 = llvm.icmp "slt" %699, %697 : i64
    llvm.cond_br %700, ^bb66, ^bb70
  ^bb66:  // pred: ^bb65
    %701 = llvm.mlir.constant(0 : index) : i64
    %702 = llvm.mlir.constant(2 : index) : i64
    %703 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb67(%701 : i64)
  ^bb67(%704: i64):  // 2 preds: ^bb66, ^bb68
    %705 = llvm.icmp "slt" %704, %702 : i64
    llvm.cond_br %705, ^bb68, ^bb69
  ^bb68:  // pred: ^bb67
    %706 = llvm.extractvalue %455[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %707 = llvm.mlir.constant(4 : index) : i64
    %708 = llvm.mul %11, %707  : i64
    %709 = llvm.mlir.constant(2 : index) : i64
    %710 = llvm.mul %694, %709  : i64
    %711 = llvm.add %708, %710  : i64
    %712 = llvm.mlir.constant(2 : index) : i64
    %713 = llvm.mul %11, %712  : i64
    %714 = llvm.add %711, %713  : i64
    %715 = llvm.add %714, %704  : i64
    %716 = llvm.getelementptr %706[%715] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %717 = llvm.load %716 : !llvm.ptr<i64>
    %718 = llvm.extractvalue %685[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %719 = llvm.mlir.constant(4 : index) : i64
    %720 = llvm.mul %689, %719  : i64
    %721 = llvm.mlir.constant(2 : index) : i64
    %722 = llvm.mul %694, %721  : i64
    %723 = llvm.add %720, %722  : i64
    %724 = llvm.mlir.constant(2 : index) : i64
    %725 = llvm.mul %699, %724  : i64
    %726 = llvm.add %723, %725  : i64
    %727 = llvm.add %726, %704  : i64
    %728 = llvm.getelementptr %718[%727] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %717, %728 : !llvm.ptr<i64>
    %729 = llvm.add %704, %703  : i64
    llvm.br ^bb67(%729 : i64)
  ^bb69:  // pred: ^bb67
    %730 = llvm.add %699, %698  : i64
    llvm.br ^bb65(%730 : i64)
  ^bb70:  // pred: ^bb65
    %731 = llvm.add %694, %693  : i64
    llvm.br ^bb63(%731 : i64)
  ^bb71:  // pred: ^bb63
    %732 = llvm.add %689, %688  : i64
    llvm.br ^bb61(%732 : i64)
  ^bb72:  // pred: ^bb61
    %733 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>)>
    %734 = llvm.insertvalue %103, %733[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %735 = llvm.insertvalue %373, %734[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %736 = llvm.insertvalue %685, %735[2] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>)> 
    llvm.return %736 : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>>) attributes {input_names = ["v2_0"], llvm.emit_c_interface, output_names = ["v5_0", "v0_0", "v6_0"]} {
    %0 = llvm.load %arg1 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>>
    %1 = llvm.extractvalue %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %2 = llvm.extractvalue %0[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %3 = llvm.extractvalue %0[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %4 = llvm.extractvalue %0[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %5 = llvm.extractvalue %0[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %6 = llvm.extractvalue %0[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %7 = llvm.extractvalue %0[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %8 = llvm.extractvalue %0[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %9 = llvm.extractvalue %0[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %10 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>)>
    llvm.store %10, %arg0 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %3 = llvm.mlir.constant(0 : i64) : i64
    %4 = llvm.getelementptr %0[%3] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %5 = llvm.load %4 : !llvm.ptr<ptr<i8>>
    %6 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>>
    %7 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>
    %8 = llvm.call @omTensorGetDataPtr(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %9 = llvm.bitcast %8 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %10 = llvm.insertvalue %9, %7[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %11 = llvm.insertvalue %9, %10[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %12 = llvm.mlir.constant(0 : i64) : i64
    %13 = llvm.insertvalue %12, %11[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %14 = llvm.call @omTensorGetShape(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %15 = llvm.call @omTensorGetStrides(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %16 = llvm.mlir.constant(0 : i64) : i64
    %17 = llvm.getelementptr %14[%16] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %18 = llvm.load %17 : !llvm.ptr<i64>
    %19 = llvm.insertvalue %18, %13[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %20 = llvm.getelementptr %15[%16] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %21 = llvm.load %20 : !llvm.ptr<i64>
    %22 = llvm.insertvalue %21, %19[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %23 = llvm.mlir.constant(1 : i64) : i64
    %24 = llvm.getelementptr %14[%23] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %25 = llvm.load %24 : !llvm.ptr<i64>
    %26 = llvm.insertvalue %25, %22[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %27 = llvm.getelementptr %15[%23] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %28 = llvm.load %27 : !llvm.ptr<i64>
    %29 = llvm.insertvalue %28, %26[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %30 = llvm.mlir.constant(2 : i64) : i64
    %31 = llvm.getelementptr %14[%30] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %32 = llvm.load %31 : !llvm.ptr<i64>
    %33 = llvm.insertvalue %32, %29[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %34 = llvm.getelementptr %15[%30] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %35 = llvm.load %34 : !llvm.ptr<i64>
    %36 = llvm.insertvalue %35, %33[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    llvm.store %36, %6 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>>
    llvm.call @_mlir_ciface_main_graph(%2, %6) : (!llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>>) -> ()
    %37 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %38 = llvm.extractvalue %37[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %39 = llvm.extractvalue %37[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %40 = llvm.extractvalue %37[2] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %41 = llvm.mlir.constant(3 : i64) : i64
    %42 = llvm.mlir.constant(24 : i64) : i64
    %43 = llvm.call @malloc(%42) : (i64) -> !llvm.ptr<i8>
    %44 = llvm.bitcast %43 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %45 = llvm.mlir.constant(1 : i64) : i64
    %46 = llvm.call @omTensorCreateUntyped(%45) : (i64) -> !llvm.ptr<i8>
    %47 = llvm.mlir.constant(0 : i64) : i64
    %48 = llvm.extractvalue %38[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %49 = llvm.bitcast %48 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %50 = llvm.extractvalue %38[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %51 = llvm.bitcast %50 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%46, %47, %49, %51) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %52 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%46, %52) : (!llvm.ptr<i8>, i64) -> ()
    %53 = llvm.call @omTensorGetShape(%46) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %54 = llvm.call @omTensorGetStrides(%46) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %55 = llvm.mlir.constant(0 : i64) : i64
    %56 = llvm.extractvalue %38[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %57 = llvm.getelementptr %53[%55] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %56, %57 : !llvm.ptr<i64>
    %58 = llvm.extractvalue %38[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %59 = llvm.getelementptr %54[%55] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %58, %59 : !llvm.ptr<i64>
    %60 = llvm.mlir.constant(0 : i64) : i64
    %61 = llvm.getelementptr %44[%60] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %46, %61 : !llvm.ptr<ptr<i8>>
    %62 = llvm.mlir.constant(4 : i64) : i64
    %63 = llvm.call @omTensorCreateUntyped(%62) : (i64) -> !llvm.ptr<i8>
    %64 = llvm.mlir.constant(1 : i64) : i64
    %65 = llvm.extractvalue %39[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %66 = llvm.bitcast %65 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %67 = llvm.extractvalue %39[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %68 = llvm.bitcast %67 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%63, %64, %66, %68) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %69 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%63, %69) : (!llvm.ptr<i8>, i64) -> ()
    %70 = llvm.call @omTensorGetShape(%63) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %71 = llvm.call @omTensorGetStrides(%63) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %72 = llvm.mlir.constant(0 : i64) : i64
    %73 = llvm.extractvalue %39[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %74 = llvm.getelementptr %70[%72] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %73, %74 : !llvm.ptr<i64>
    %75 = llvm.extractvalue %39[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %76 = llvm.getelementptr %71[%72] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %75, %76 : !llvm.ptr<i64>
    %77 = llvm.mlir.constant(1 : i64) : i64
    %78 = llvm.extractvalue %39[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %79 = llvm.getelementptr %70[%77] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %78, %79 : !llvm.ptr<i64>
    %80 = llvm.extractvalue %39[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %81 = llvm.getelementptr %71[%77] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %80, %81 : !llvm.ptr<i64>
    %82 = llvm.mlir.constant(2 : i64) : i64
    %83 = llvm.extractvalue %39[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %84 = llvm.getelementptr %70[%82] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %83, %84 : !llvm.ptr<i64>
    %85 = llvm.extractvalue %39[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %86 = llvm.getelementptr %71[%82] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %85, %86 : !llvm.ptr<i64>
    %87 = llvm.mlir.constant(3 : i64) : i64
    %88 = llvm.extractvalue %39[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %89 = llvm.getelementptr %70[%87] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %88, %89 : !llvm.ptr<i64>
    %90 = llvm.extractvalue %39[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %91 = llvm.getelementptr %71[%87] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %90, %91 : !llvm.ptr<i64>
    %92 = llvm.mlir.constant(1 : i64) : i64
    %93 = llvm.getelementptr %44[%92] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %63, %93 : !llvm.ptr<ptr<i8>>
    %94 = llvm.mlir.constant(4 : i64) : i64
    %95 = llvm.call @omTensorCreateUntyped(%94) : (i64) -> !llvm.ptr<i8>
    %96 = llvm.mlir.constant(1 : i64) : i64
    %97 = llvm.extractvalue %40[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %98 = llvm.bitcast %97 : !llvm.ptr<i64> to !llvm.ptr<i8>
    %99 = llvm.extractvalue %40[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %100 = llvm.bitcast %99 : !llvm.ptr<i64> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%95, %96, %98, %100) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %101 = llvm.mlir.constant(7 : i64) : i64
    llvm.call @omTensorSetDataType(%95, %101) : (!llvm.ptr<i8>, i64) -> ()
    %102 = llvm.call @omTensorGetShape(%95) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %103 = llvm.call @omTensorGetStrides(%95) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %104 = llvm.mlir.constant(0 : i64) : i64
    %105 = llvm.extractvalue %40[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %106 = llvm.getelementptr %102[%104] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %105, %106 : !llvm.ptr<i64>
    %107 = llvm.extractvalue %40[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %108 = llvm.getelementptr %103[%104] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %107, %108 : !llvm.ptr<i64>
    %109 = llvm.mlir.constant(1 : i64) : i64
    %110 = llvm.extractvalue %40[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %111 = llvm.getelementptr %102[%109] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %110, %111 : !llvm.ptr<i64>
    %112 = llvm.extractvalue %40[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %113 = llvm.getelementptr %103[%109] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %112, %113 : !llvm.ptr<i64>
    %114 = llvm.mlir.constant(2 : i64) : i64
    %115 = llvm.extractvalue %40[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %116 = llvm.getelementptr %102[%114] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %115, %116 : !llvm.ptr<i64>
    %117 = llvm.extractvalue %40[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %118 = llvm.getelementptr %103[%114] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %117, %118 : !llvm.ptr<i64>
    %119 = llvm.mlir.constant(3 : i64) : i64
    %120 = llvm.extractvalue %40[3, 3] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %121 = llvm.getelementptr %102[%119] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %120, %121 : !llvm.ptr<i64>
    %122 = llvm.extractvalue %40[4, 3] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %123 = llvm.getelementptr %103[%119] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %122, %123 : !llvm.ptr<i64>
    %124 = llvm.mlir.constant(2 : i64) : i64
    %125 = llvm.getelementptr %44[%124] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %95, %125 : !llvm.ptr<ptr<i8>>
    %126 = llvm.call @omTensorListCreate(%44, %41, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %126 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_in_sig : !llvm.ptr<array<68 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<68 x i8>> to !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<199 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<199 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

