module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [2 , 1 , 1 , 1] , \22name\22 : \22v2_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i16\22 , \22dims\22 : [2 , 2 , 1 , 2] , \22name\22 : \22v5_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [2 , 2 , 2 , 2] , \22name\22 : \22v4_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.mlir.global internal constant @constant_6(dense<true> : tensor<2x1x2xi1>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<2 x array<1 x array<2 x i1>>>
  llvm.mlir.global internal constant @constant_5(dense<[[7], [5]]> : tensor<2x1xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<2 x array<1 x i32>>
  llvm.mlir.global internal constant @constant_4(dense<[[[[4, 5]], [[6, 5]]], [[[4, 6]], [[4, 4]]]]> : tensor<2x2x1x2xi16>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<2 x array<2 x array<1 x array<2 x i16>>>>
  llvm.mlir.global internal constant @constant_3(dense<4> : tensor<i16>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i16>
  llvm.mlir.global internal constant @constant_2(dense<5> : tensor<1x1x1xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x array<1 x array<1 x i32>>>
  llvm.mlir.global internal constant @constant_1(dense<1> : tensor<i16>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i16>
  llvm.mlir.global internal constant @constant_0(dense<-1> : tensor<i16>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i16>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64) -> !llvm.struct<(struct<(ptr<i16>, ptr<i16>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> attributes {input_names = ["v2_0"], llvm.emit_c_interface, output_names = ["v5_0", "v4_0"]} {
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
    %12 = llvm.mlir.constant(0 : index) : i64
    %13 = llvm.mlir.constant(-2147483648 : i32) : i32
    %14 = llvm.mlir.addressof @constant_0 : !llvm.ptr<array<1 x i16>>
    %15 = llvm.bitcast %14 : !llvm.ptr<array<1 x i16>> to !llvm.ptr<i16>
    %16 = llvm.mlir.undef : !llvm.struct<(ptr<i16>, ptr<i16>, i64)>
    %17 = llvm.insertvalue %15, %16[0] : !llvm.struct<(ptr<i16>, ptr<i16>, i64)> 
    %18 = llvm.insertvalue %15, %17[1] : !llvm.struct<(ptr<i16>, ptr<i16>, i64)> 
    %19 = llvm.mlir.constant(0 : index) : i64
    %20 = llvm.insertvalue %19, %18[2] : !llvm.struct<(ptr<i16>, ptr<i16>, i64)> 
    %21 = llvm.mlir.addressof @constant_1 : !llvm.ptr<array<1 x i16>>
    %22 = llvm.bitcast %21 : !llvm.ptr<array<1 x i16>> to !llvm.ptr<i16>
    %23 = llvm.mlir.undef : !llvm.struct<(ptr<i16>, ptr<i16>, i64)>
    %24 = llvm.insertvalue %22, %23[0] : !llvm.struct<(ptr<i16>, ptr<i16>, i64)> 
    %25 = llvm.insertvalue %22, %24[1] : !llvm.struct<(ptr<i16>, ptr<i16>, i64)> 
    %26 = llvm.mlir.constant(0 : index) : i64
    %27 = llvm.insertvalue %26, %25[2] : !llvm.struct<(ptr<i16>, ptr<i16>, i64)> 
    %28 = llvm.mlir.addressof @constant_2 : !llvm.ptr<array<1 x array<1 x array<1 x i32>>>>
    %29 = llvm.bitcast %28 : !llvm.ptr<array<1 x array<1 x array<1 x i32>>>> to !llvm.ptr<i32>
    %30 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>
    %31 = llvm.insertvalue %29, %30[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %32 = llvm.insertvalue %29, %31[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %33 = llvm.mlir.constant(0 : index) : i64
    %34 = llvm.insertvalue %33, %32[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %35 = llvm.mlir.constant(1 : index) : i64
    %36 = llvm.insertvalue %35, %34[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %37 = llvm.mlir.constant(1 : index) : i64
    %38 = llvm.insertvalue %37, %36[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %39 = llvm.mlir.constant(1 : index) : i64
    %40 = llvm.insertvalue %39, %38[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %41 = llvm.mlir.constant(1 : index) : i64
    %42 = llvm.insertvalue %41, %40[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %43 = llvm.mlir.constant(1 : index) : i64
    %44 = llvm.insertvalue %43, %42[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %45 = llvm.mlir.constant(1 : index) : i64
    %46 = llvm.insertvalue %45, %44[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %47 = llvm.mlir.addressof @constant_3 : !llvm.ptr<array<1 x i16>>
    %48 = llvm.bitcast %47 : !llvm.ptr<array<1 x i16>> to !llvm.ptr<i16>
    %49 = llvm.mlir.undef : !llvm.struct<(ptr<i16>, ptr<i16>, i64)>
    %50 = llvm.insertvalue %48, %49[0] : !llvm.struct<(ptr<i16>, ptr<i16>, i64)> 
    %51 = llvm.insertvalue %48, %50[1] : !llvm.struct<(ptr<i16>, ptr<i16>, i64)> 
    %52 = llvm.mlir.constant(0 : index) : i64
    %53 = llvm.insertvalue %52, %51[2] : !llvm.struct<(ptr<i16>, ptr<i16>, i64)> 
    %54 = llvm.mlir.addressof @constant_4 : !llvm.ptr<array<2 x array<2 x array<1 x array<2 x i16>>>>>
    %55 = llvm.bitcast %54 : !llvm.ptr<array<2 x array<2 x array<1 x array<2 x i16>>>>> to !llvm.ptr<i16>
    %56 = llvm.mlir.undef : !llvm.struct<(ptr<i16>, ptr<i16>, i64, array<4 x i64>, array<4 x i64>)>
    %57 = llvm.insertvalue %55, %56[0] : !llvm.struct<(ptr<i16>, ptr<i16>, i64, array<4 x i64>, array<4 x i64>)> 
    %58 = llvm.insertvalue %55, %57[1] : !llvm.struct<(ptr<i16>, ptr<i16>, i64, array<4 x i64>, array<4 x i64>)> 
    %59 = llvm.mlir.constant(0 : index) : i64
    %60 = llvm.insertvalue %59, %58[2] : !llvm.struct<(ptr<i16>, ptr<i16>, i64, array<4 x i64>, array<4 x i64>)> 
    %61 = llvm.mlir.constant(2 : index) : i64
    %62 = llvm.insertvalue %61, %60[3, 0] : !llvm.struct<(ptr<i16>, ptr<i16>, i64, array<4 x i64>, array<4 x i64>)> 
    %63 = llvm.mlir.constant(4 : index) : i64
    %64 = llvm.insertvalue %63, %62[4, 0] : !llvm.struct<(ptr<i16>, ptr<i16>, i64, array<4 x i64>, array<4 x i64>)> 
    %65 = llvm.mlir.constant(2 : index) : i64
    %66 = llvm.insertvalue %65, %64[3, 1] : !llvm.struct<(ptr<i16>, ptr<i16>, i64, array<4 x i64>, array<4 x i64>)> 
    %67 = llvm.mlir.constant(2 : index) : i64
    %68 = llvm.insertvalue %67, %66[4, 1] : !llvm.struct<(ptr<i16>, ptr<i16>, i64, array<4 x i64>, array<4 x i64>)> 
    %69 = llvm.mlir.constant(1 : index) : i64
    %70 = llvm.insertvalue %69, %68[3, 2] : !llvm.struct<(ptr<i16>, ptr<i16>, i64, array<4 x i64>, array<4 x i64>)> 
    %71 = llvm.mlir.constant(2 : index) : i64
    %72 = llvm.insertvalue %71, %70[4, 2] : !llvm.struct<(ptr<i16>, ptr<i16>, i64, array<4 x i64>, array<4 x i64>)> 
    %73 = llvm.mlir.constant(2 : index) : i64
    %74 = llvm.insertvalue %73, %72[3, 3] : !llvm.struct<(ptr<i16>, ptr<i16>, i64, array<4 x i64>, array<4 x i64>)> 
    %75 = llvm.mlir.constant(1 : index) : i64
    %76 = llvm.insertvalue %75, %74[4, 3] : !llvm.struct<(ptr<i16>, ptr<i16>, i64, array<4 x i64>, array<4 x i64>)> 
    %77 = llvm.mlir.addressof @constant_5 : !llvm.ptr<array<2 x array<1 x i32>>>
    %78 = llvm.bitcast %77 : !llvm.ptr<array<2 x array<1 x i32>>> to !llvm.ptr<i32>
    %79 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>
    %80 = llvm.insertvalue %78, %79[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %81 = llvm.insertvalue %78, %80[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %82 = llvm.mlir.constant(0 : index) : i64
    %83 = llvm.insertvalue %82, %81[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %84 = llvm.mlir.constant(2 : index) : i64
    %85 = llvm.insertvalue %84, %83[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %86 = llvm.mlir.constant(1 : index) : i64
    %87 = llvm.insertvalue %86, %85[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %88 = llvm.mlir.constant(1 : index) : i64
    %89 = llvm.insertvalue %88, %87[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %90 = llvm.mlir.constant(1 : index) : i64
    %91 = llvm.insertvalue %90, %89[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %92 = llvm.mlir.addressof @constant_6 : !llvm.ptr<array<2 x array<1 x array<2 x i1>>>>
    %93 = llvm.bitcast %92 : !llvm.ptr<array<2 x array<1 x array<2 x i1>>>> to !llvm.ptr<i1>
    %94 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)>
    %95 = llvm.insertvalue %93, %94[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %96 = llvm.insertvalue %93, %95[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %97 = llvm.mlir.constant(0 : index) : i64
    %98 = llvm.insertvalue %97, %96[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %99 = llvm.mlir.constant(2 : index) : i64
    %100 = llvm.insertvalue %99, %98[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %101 = llvm.mlir.constant(2 : index) : i64
    %102 = llvm.insertvalue %101, %100[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %103 = llvm.mlir.constant(1 : index) : i64
    %104 = llvm.insertvalue %103, %102[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %105 = llvm.mlir.constant(2 : index) : i64
    %106 = llvm.insertvalue %105, %104[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %107 = llvm.mlir.constant(2 : index) : i64
    %108 = llvm.insertvalue %107, %106[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %109 = llvm.mlir.constant(1 : index) : i64
    %110 = llvm.insertvalue %109, %108[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %111 = llvm.mlir.constant(1 : index) : i64
    %112 = llvm.mlir.constant(1 : index) : i64
    %113 = llvm.mlir.constant(1 : index) : i64
    %114 = llvm.mlir.null : !llvm.ptr<i32>
    %115 = llvm.getelementptr %114[%111] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %116 = llvm.ptrtoint %115 : !llvm.ptr<i32> to i64
    %117 = llvm.mlir.constant(16 : index) : i64
    %118 = llvm.add %116, %117  : i64
    %119 = llvm.call @malloc(%118) : (i64) -> !llvm.ptr<i8>
    %120 = llvm.bitcast %119 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %121 = llvm.ptrtoint %120 : !llvm.ptr<i32> to i64
    %122 = llvm.mlir.constant(1 : index) : i64
    %123 = llvm.sub %117, %122  : i64
    %124 = llvm.add %121, %123  : i64
    %125 = llvm.urem %124, %117  : i64
    %126 = llvm.sub %124, %125  : i64
    %127 = llvm.inttoptr %126 : i64 to !llvm.ptr<i32>
    %128 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>
    %129 = llvm.insertvalue %120, %128[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %130 = llvm.insertvalue %127, %129[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %131 = llvm.mlir.constant(0 : index) : i64
    %132 = llvm.insertvalue %131, %130[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %133 = llvm.insertvalue %111, %132[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %134 = llvm.insertvalue %112, %133[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %135 = llvm.insertvalue %112, %134[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %136 = llvm.insertvalue %113, %135[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %137 = llvm.mlir.constant(0 : index) : i64
    %138 = llvm.mlir.constant(1 : index) : i64
    %139 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%137 : i64)
  ^bb1(%140: i64):  // 2 preds: ^bb0, ^bb5
    %141 = llvm.icmp "slt" %140, %138 : i64
    llvm.cond_br %141, ^bb2, ^bb6
  ^bb2:  // pred: ^bb1
    %142 = llvm.mlir.constant(0 : index) : i64
    %143 = llvm.mlir.constant(1 : index) : i64
    %144 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%142 : i64)
  ^bb3(%145: i64):  // 2 preds: ^bb2, ^bb4
    %146 = llvm.icmp "slt" %145, %143 : i64
    llvm.cond_br %146, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    %147 = llvm.extractvalue %136[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %148 = llvm.add %140, %145  : i64
    %149 = llvm.getelementptr %147[%148] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %13, %149 : !llvm.ptr<i32>
    %150 = llvm.add %145, %144  : i64
    llvm.br ^bb3(%150 : i64)
  ^bb5:  // pred: ^bb3
    %151 = llvm.add %140, %139  : i64
    llvm.br ^bb1(%151 : i64)
  ^bb6:  // pred: ^bb1
    %152 = llvm.mlir.constant(0 : index) : i64
    %153 = llvm.mlir.constant(1 : index) : i64
    %154 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%152 : i64)
  ^bb7(%155: i64):  // 2 preds: ^bb6, ^bb14
    %156 = llvm.icmp "slt" %155, %153 : i64
    llvm.cond_br %156, ^bb8, ^bb15
  ^bb8:  // pred: ^bb7
    %157 = llvm.mlir.constant(0 : index) : i64
    %158 = llvm.mlir.constant(1 : index) : i64
    %159 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb9(%157 : i64)
  ^bb9(%160: i64):  // 2 preds: ^bb8, ^bb13
    %161 = llvm.icmp "slt" %160, %158 : i64
    llvm.cond_br %161, ^bb10, ^bb14
  ^bb10:  // pred: ^bb9
    %162 = llvm.mlir.constant(0 : index) : i64
    %163 = llvm.mlir.constant(1 : index) : i64
    %164 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb11(%162 : i64)
  ^bb11(%165: i64):  // 2 preds: ^bb10, ^bb12
    %166 = llvm.icmp "slt" %165, %163 : i64
    llvm.cond_br %166, ^bb12, ^bb13
  ^bb12:  // pred: ^bb11
    %167 = llvm.extractvalue %46[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %168 = llvm.add %155, %160  : i64
    %169 = llvm.add %168, %165  : i64
    %170 = llvm.getelementptr %167[%169] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %171 = llvm.load %170 : !llvm.ptr<i32>
    %172 = llvm.extractvalue %136[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %173 = llvm.add %155, %165  : i64
    %174 = llvm.getelementptr %172[%173] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %175 = llvm.load %174 : !llvm.ptr<i32>
    %176 = llvm.icmp "sgt" %175, %171 : i32
    %177 = llvm.select %176, %175, %171 : i1, i32
    %178 = llvm.extractvalue %136[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %179 = llvm.add %155, %165  : i64
    %180 = llvm.getelementptr %178[%179] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %177, %180 : !llvm.ptr<i32>
    %181 = llvm.add %165, %164  : i64
    llvm.br ^bb11(%181 : i64)
  ^bb13:  // pred: ^bb11
    %182 = llvm.add %160, %159  : i64
    llvm.br ^bb9(%182 : i64)
  ^bb14:  // pred: ^bb9
    %183 = llvm.add %155, %154  : i64
    llvm.br ^bb7(%183 : i64)
  ^bb15:  // pred: ^bb7
    %184 = llvm.mlir.constant(2 : index) : i64
    %185 = llvm.mlir.constant(2 : index) : i64
    %186 = llvm.mlir.constant(1 : index) : i64
    %187 = llvm.mlir.constant(2 : index) : i64
    %188 = llvm.mlir.constant(1 : index) : i64
    %189 = llvm.mlir.constant(2 : index) : i64
    %190 = llvm.mlir.constant(4 : index) : i64
    %191 = llvm.mlir.constant(8 : index) : i64
    %192 = llvm.mlir.null : !llvm.ptr<i16>
    %193 = llvm.getelementptr %192[%191] : (!llvm.ptr<i16>, i64) -> !llvm.ptr<i16>
    %194 = llvm.ptrtoint %193 : !llvm.ptr<i16> to i64
    %195 = llvm.mlir.constant(16 : index) : i64
    %196 = llvm.add %194, %195  : i64
    %197 = llvm.call @malloc(%196) : (i64) -> !llvm.ptr<i8>
    %198 = llvm.bitcast %197 : !llvm.ptr<i8> to !llvm.ptr<i16>
    %199 = llvm.ptrtoint %198 : !llvm.ptr<i16> to i64
    %200 = llvm.mlir.constant(1 : index) : i64
    %201 = llvm.sub %195, %200  : i64
    %202 = llvm.add %199, %201  : i64
    %203 = llvm.urem %202, %195  : i64
    %204 = llvm.sub %202, %203  : i64
    %205 = llvm.inttoptr %204 : i64 to !llvm.ptr<i16>
    %206 = llvm.mlir.undef : !llvm.struct<(ptr<i16>, ptr<i16>, i64, array<4 x i64>, array<4 x i64>)>
    %207 = llvm.insertvalue %198, %206[0] : !llvm.struct<(ptr<i16>, ptr<i16>, i64, array<4 x i64>, array<4 x i64>)> 
    %208 = llvm.insertvalue %205, %207[1] : !llvm.struct<(ptr<i16>, ptr<i16>, i64, array<4 x i64>, array<4 x i64>)> 
    %209 = llvm.mlir.constant(0 : index) : i64
    %210 = llvm.insertvalue %209, %208[2] : !llvm.struct<(ptr<i16>, ptr<i16>, i64, array<4 x i64>, array<4 x i64>)> 
    %211 = llvm.insertvalue %184, %210[3, 0] : !llvm.struct<(ptr<i16>, ptr<i16>, i64, array<4 x i64>, array<4 x i64>)> 
    %212 = llvm.insertvalue %185, %211[3, 1] : !llvm.struct<(ptr<i16>, ptr<i16>, i64, array<4 x i64>, array<4 x i64>)> 
    %213 = llvm.insertvalue %186, %212[3, 2] : !llvm.struct<(ptr<i16>, ptr<i16>, i64, array<4 x i64>, array<4 x i64>)> 
    %214 = llvm.insertvalue %187, %213[3, 3] : !llvm.struct<(ptr<i16>, ptr<i16>, i64, array<4 x i64>, array<4 x i64>)> 
    %215 = llvm.insertvalue %190, %214[4, 0] : !llvm.struct<(ptr<i16>, ptr<i16>, i64, array<4 x i64>, array<4 x i64>)> 
    %216 = llvm.insertvalue %189, %215[4, 1] : !llvm.struct<(ptr<i16>, ptr<i16>, i64, array<4 x i64>, array<4 x i64>)> 
    %217 = llvm.insertvalue %187, %216[4, 2] : !llvm.struct<(ptr<i16>, ptr<i16>, i64, array<4 x i64>, array<4 x i64>)> 
    %218 = llvm.insertvalue %188, %217[4, 3] : !llvm.struct<(ptr<i16>, ptr<i16>, i64, array<4 x i64>, array<4 x i64>)> 
    %219 = llvm.mlir.constant(0 : index) : i64
    %220 = llvm.mlir.constant(2 : index) : i64
    %221 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb16(%219 : i64)
  ^bb16(%222: i64):  // 2 preds: ^bb15, ^bb26
    %223 = llvm.icmp "slt" %222, %220 : i64
    llvm.cond_br %223, ^bb17, ^bb27
  ^bb17:  // pred: ^bb16
    %224 = llvm.mlir.constant(0 : index) : i64
    %225 = llvm.mlir.constant(2 : index) : i64
    %226 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb18(%224 : i64)
  ^bb18(%227: i64):  // 2 preds: ^bb17, ^bb25
    %228 = llvm.icmp "slt" %227, %225 : i64
    llvm.cond_br %228, ^bb19, ^bb26
  ^bb19:  // pred: ^bb18
    %229 = llvm.mlir.constant(0 : index) : i64
    %230 = llvm.mlir.constant(1 : index) : i64
    %231 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb20(%229 : i64)
  ^bb20(%232: i64):  // 2 preds: ^bb19, ^bb24
    %233 = llvm.icmp "slt" %232, %230 : i64
    llvm.cond_br %233, ^bb21, ^bb25
  ^bb21:  // pred: ^bb20
    %234 = llvm.mlir.constant(0 : index) : i64
    %235 = llvm.mlir.constant(2 : index) : i64
    %236 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb22(%234 : i64)
  ^bb22(%237: i64):  // 2 preds: ^bb21, ^bb23
    %238 = llvm.icmp "slt" %237, %235 : i64
    llvm.cond_br %238, ^bb23, ^bb24
  ^bb23:  // pred: ^bb22
    %239 = llvm.extractvalue %76[1] : !llvm.struct<(ptr<i16>, ptr<i16>, i64, array<4 x i64>, array<4 x i64>)> 
    %240 = llvm.mlir.constant(4 : index) : i64
    %241 = llvm.mul %222, %240  : i64
    %242 = llvm.mlir.constant(2 : index) : i64
    %243 = llvm.mul %227, %242  : i64
    %244 = llvm.add %241, %243  : i64
    %245 = llvm.mlir.constant(2 : index) : i64
    %246 = llvm.mul %232, %245  : i64
    %247 = llvm.add %244, %246  : i64
    %248 = llvm.add %247, %237  : i64
    %249 = llvm.getelementptr %239[%248] : (!llvm.ptr<i16>, i64) -> !llvm.ptr<i16>
    %250 = llvm.load %249 : !llvm.ptr<i16>
    %251 = llvm.extractvalue %20[1] : !llvm.struct<(ptr<i16>, ptr<i16>, i64)> 
    %252 = llvm.load %251 : !llvm.ptr<i16>
    %253 = llvm.icmp "slt" %250, %252 : i16
    %254 = llvm.select %253, %252, %250 : i1, i16
    %255 = llvm.extractvalue %27[1] : !llvm.struct<(ptr<i16>, ptr<i16>, i64)> 
    %256 = llvm.load %255 : !llvm.ptr<i16>
    %257 = llvm.icmp "slt" %254, %256 : i16
    %258 = llvm.select %257, %254, %256 : i1, i16
    %259 = llvm.extractvalue %218[1] : !llvm.struct<(ptr<i16>, ptr<i16>, i64, array<4 x i64>, array<4 x i64>)> 
    %260 = llvm.mlir.constant(4 : index) : i64
    %261 = llvm.mul %222, %260  : i64
    %262 = llvm.mlir.constant(2 : index) : i64
    %263 = llvm.mul %227, %262  : i64
    %264 = llvm.add %261, %263  : i64
    %265 = llvm.mlir.constant(2 : index) : i64
    %266 = llvm.mul %232, %265  : i64
    %267 = llvm.add %264, %266  : i64
    %268 = llvm.add %267, %237  : i64
    %269 = llvm.getelementptr %259[%268] : (!llvm.ptr<i16>, i64) -> !llvm.ptr<i16>
    llvm.store %258, %269 : !llvm.ptr<i16>
    %270 = llvm.add %237, %236  : i64
    llvm.br ^bb22(%270 : i64)
  ^bb24:  // pred: ^bb22
    %271 = llvm.add %232, %231  : i64
    llvm.br ^bb20(%271 : i64)
  ^bb25:  // pred: ^bb20
    %272 = llvm.add %227, %226  : i64
    llvm.br ^bb18(%272 : i64)
  ^bb26:  // pred: ^bb18
    %273 = llvm.add %222, %221  : i64
    llvm.br ^bb16(%273 : i64)
  ^bb27:  // pred: ^bb16
    %274 = llvm.mlir.constant(2 : index) : i64
    %275 = llvm.mlir.constant(2 : index) : i64
    %276 = llvm.mlir.constant(1 : index) : i64
    %277 = llvm.mlir.constant(2 : index) : i64
    %278 = llvm.mlir.constant(1 : index) : i64
    %279 = llvm.mlir.constant(2 : index) : i64
    %280 = llvm.mlir.constant(4 : index) : i64
    %281 = llvm.mlir.constant(8 : index) : i64
    %282 = llvm.mlir.null : !llvm.ptr<i1>
    %283 = llvm.getelementptr %282[%281] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %284 = llvm.ptrtoint %283 : !llvm.ptr<i1> to i64
    %285 = llvm.mlir.constant(16 : index) : i64
    %286 = llvm.add %284, %285  : i64
    %287 = llvm.call @malloc(%286) : (i64) -> !llvm.ptr<i8>
    %288 = llvm.bitcast %287 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %289 = llvm.ptrtoint %288 : !llvm.ptr<i1> to i64
    %290 = llvm.mlir.constant(1 : index) : i64
    %291 = llvm.sub %285, %290  : i64
    %292 = llvm.add %289, %291  : i64
    %293 = llvm.urem %292, %285  : i64
    %294 = llvm.sub %292, %293  : i64
    %295 = llvm.inttoptr %294 : i64 to !llvm.ptr<i1>
    %296 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>
    %297 = llvm.insertvalue %288, %296[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %298 = llvm.insertvalue %295, %297[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %299 = llvm.mlir.constant(0 : index) : i64
    %300 = llvm.insertvalue %299, %298[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %301 = llvm.insertvalue %274, %300[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %302 = llvm.insertvalue %275, %301[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %303 = llvm.insertvalue %276, %302[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %304 = llvm.insertvalue %277, %303[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %305 = llvm.insertvalue %280, %304[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %306 = llvm.insertvalue %279, %305[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %307 = llvm.insertvalue %277, %306[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %308 = llvm.insertvalue %278, %307[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %309 = llvm.mlir.constant(0 : index) : i64
    %310 = llvm.mlir.constant(2 : index) : i64
    %311 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb28(%309 : i64)
  ^bb28(%312: i64):  // 2 preds: ^bb27, ^bb38
    %313 = llvm.icmp "slt" %312, %310 : i64
    llvm.cond_br %313, ^bb29, ^bb39
  ^bb29:  // pred: ^bb28
    %314 = llvm.mlir.constant(0 : index) : i64
    %315 = llvm.mlir.constant(2 : index) : i64
    %316 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb30(%314 : i64)
  ^bb30(%317: i64):  // 2 preds: ^bb29, ^bb37
    %318 = llvm.icmp "slt" %317, %315 : i64
    llvm.cond_br %318, ^bb31, ^bb38
  ^bb31:  // pred: ^bb30
    %319 = llvm.mlir.constant(0 : index) : i64
    %320 = llvm.mlir.constant(1 : index) : i64
    %321 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb32(%319 : i64)
  ^bb32(%322: i64):  // 2 preds: ^bb31, ^bb36
    %323 = llvm.icmp "slt" %322, %320 : i64
    llvm.cond_br %323, ^bb33, ^bb37
  ^bb33:  // pred: ^bb32
    %324 = llvm.mlir.constant(0 : index) : i64
    %325 = llvm.mlir.constant(2 : index) : i64
    %326 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb34(%324 : i64)
  ^bb34(%327: i64):  // 2 preds: ^bb33, ^bb35
    %328 = llvm.icmp "slt" %327, %325 : i64
    llvm.cond_br %328, ^bb35, ^bb36
  ^bb35:  // pred: ^bb34
    %329 = llvm.extractvalue %76[1] : !llvm.struct<(ptr<i16>, ptr<i16>, i64, array<4 x i64>, array<4 x i64>)> 
    %330 = llvm.mlir.constant(4 : index) : i64
    %331 = llvm.mul %312, %330  : i64
    %332 = llvm.mlir.constant(2 : index) : i64
    %333 = llvm.mul %317, %332  : i64
    %334 = llvm.add %331, %333  : i64
    %335 = llvm.mlir.constant(2 : index) : i64
    %336 = llvm.mul %322, %335  : i64
    %337 = llvm.add %334, %336  : i64
    %338 = llvm.add %337, %327  : i64
    %339 = llvm.getelementptr %329[%338] : (!llvm.ptr<i16>, i64) -> !llvm.ptr<i16>
    %340 = llvm.load %339 : !llvm.ptr<i16>
    %341 = llvm.extractvalue %53[1] : !llvm.struct<(ptr<i16>, ptr<i16>, i64)> 
    %342 = llvm.load %341 : !llvm.ptr<i16>
    %343 = llvm.icmp "eq" %340, %342 : i16
    %344 = llvm.extractvalue %308[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %345 = llvm.mlir.constant(4 : index) : i64
    %346 = llvm.mul %312, %345  : i64
    %347 = llvm.mlir.constant(2 : index) : i64
    %348 = llvm.mul %317, %347  : i64
    %349 = llvm.add %346, %348  : i64
    %350 = llvm.mlir.constant(2 : index) : i64
    %351 = llvm.mul %322, %350  : i64
    %352 = llvm.add %349, %351  : i64
    %353 = llvm.add %352, %327  : i64
    %354 = llvm.getelementptr %344[%353] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %343, %354 : !llvm.ptr<i1>
    %355 = llvm.add %327, %326  : i64
    llvm.br ^bb34(%355 : i64)
  ^bb36:  // pred: ^bb34
    %356 = llvm.add %322, %321  : i64
    llvm.br ^bb32(%356 : i64)
  ^bb37:  // pred: ^bb32
    %357 = llvm.add %317, %316  : i64
    llvm.br ^bb30(%357 : i64)
  ^bb38:  // pred: ^bb30
    %358 = llvm.add %312, %311  : i64
    llvm.br ^bb28(%358 : i64)
  ^bb39:  // pred: ^bb28
    %359 = llvm.mlir.constant(2 : index) : i64
    %360 = llvm.mlir.constant(2 : index) : i64
    %361 = llvm.mlir.constant(2 : index) : i64
    %362 = llvm.mlir.constant(1 : index) : i64
    %363 = llvm.mlir.constant(4 : index) : i64
    %364 = llvm.mlir.constant(8 : index) : i64
    %365 = llvm.mlir.null : !llvm.ptr<i32>
    %366 = llvm.getelementptr %365[%364] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %367 = llvm.ptrtoint %366 : !llvm.ptr<i32> to i64
    %368 = llvm.mlir.constant(16 : index) : i64
    %369 = llvm.add %367, %368  : i64
    %370 = llvm.call @malloc(%369) : (i64) -> !llvm.ptr<i8>
    %371 = llvm.bitcast %370 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %372 = llvm.ptrtoint %371 : !llvm.ptr<i32> to i64
    %373 = llvm.mlir.constant(1 : index) : i64
    %374 = llvm.sub %368, %373  : i64
    %375 = llvm.add %372, %374  : i64
    %376 = llvm.urem %375, %368  : i64
    %377 = llvm.sub %375, %376  : i64
    %378 = llvm.inttoptr %377 : i64 to !llvm.ptr<i32>
    %379 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>
    %380 = llvm.insertvalue %371, %379[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %381 = llvm.insertvalue %378, %380[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %382 = llvm.mlir.constant(0 : index) : i64
    %383 = llvm.insertvalue %382, %381[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %384 = llvm.insertvalue %359, %383[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %385 = llvm.insertvalue %360, %384[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %386 = llvm.insertvalue %361, %385[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %387 = llvm.insertvalue %363, %386[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %388 = llvm.insertvalue %361, %387[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %389 = llvm.insertvalue %362, %388[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %390 = llvm.mlir.constant(0 : index) : i64
    %391 = llvm.mlir.constant(2 : index) : i64
    %392 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb40(%390 : i64)
  ^bb40(%393: i64):  // 2 preds: ^bb39, ^bb47
    %394 = llvm.icmp "slt" %393, %391 : i64
    llvm.cond_br %394, ^bb41, ^bb48
  ^bb41:  // pred: ^bb40
    %395 = llvm.mlir.constant(0 : index) : i64
    %396 = llvm.mlir.constant(2 : index) : i64
    %397 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb42(%395 : i64)
  ^bb42(%398: i64):  // 2 preds: ^bb41, ^bb46
    %399 = llvm.icmp "slt" %398, %396 : i64
    llvm.cond_br %399, ^bb43, ^bb47
  ^bb43:  // pred: ^bb42
    %400 = llvm.mlir.constant(0 : index) : i64
    %401 = llvm.mlir.constant(2 : index) : i64
    %402 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb44(%400 : i64)
  ^bb44(%403: i64):  // 2 preds: ^bb43, ^bb45
    %404 = llvm.icmp "slt" %403, %401 : i64
    llvm.cond_br %404, ^bb45, ^bb46
  ^bb45:  // pred: ^bb44
    %405 = llvm.extractvalue %110[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %406 = llvm.mlir.constant(2 : index) : i64
    %407 = llvm.mul %393, %406  : i64
    %408 = llvm.mlir.constant(2 : index) : i64
    %409 = llvm.mul %12, %408  : i64
    %410 = llvm.add %407, %409  : i64
    %411 = llvm.add %410, %403  : i64
    %412 = llvm.getelementptr %405[%411] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %413 = llvm.load %412 : !llvm.ptr<i1>
    %414 = llvm.extractvalue %136[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %415 = llvm.add %12, %12  : i64
    %416 = llvm.getelementptr %414[%415] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %417 = llvm.load %416 : !llvm.ptr<i32>
    %418 = llvm.extractvalue %91[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %419 = llvm.add %398, %12  : i64
    %420 = llvm.getelementptr %418[%419] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %421 = llvm.load %420 : !llvm.ptr<i32>
    %422 = llvm.select %413, %417, %421 : i1, i32
    %423 = llvm.extractvalue %389[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %424 = llvm.mlir.constant(4 : index) : i64
    %425 = llvm.mul %393, %424  : i64
    %426 = llvm.mlir.constant(2 : index) : i64
    %427 = llvm.mul %398, %426  : i64
    %428 = llvm.add %425, %427  : i64
    %429 = llvm.add %428, %403  : i64
    %430 = llvm.getelementptr %423[%429] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %422, %430 : !llvm.ptr<i32>
    %431 = llvm.add %403, %402  : i64
    llvm.br ^bb44(%431 : i64)
  ^bb46:  // pred: ^bb44
    %432 = llvm.add %398, %397  : i64
    llvm.br ^bb42(%432 : i64)
  ^bb47:  // pred: ^bb42
    %433 = llvm.add %393, %392  : i64
    llvm.br ^bb40(%433 : i64)
  ^bb48:  // pred: ^bb40
    %434 = llvm.mlir.constant(2 : index) : i64
    %435 = llvm.mlir.constant(2 : index) : i64
    %436 = llvm.mlir.constant(2 : index) : i64
    %437 = llvm.mlir.constant(2 : index) : i64
    %438 = llvm.mlir.constant(1 : index) : i64
    %439 = llvm.mlir.constant(4 : index) : i64
    %440 = llvm.mlir.constant(8 : index) : i64
    %441 = llvm.mlir.constant(16 : index) : i64
    %442 = llvm.mlir.null : !llvm.ptr<i32>
    %443 = llvm.getelementptr %442[%441] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %444 = llvm.ptrtoint %443 : !llvm.ptr<i32> to i64
    %445 = llvm.mlir.constant(16 : index) : i64
    %446 = llvm.add %444, %445  : i64
    %447 = llvm.call @malloc(%446) : (i64) -> !llvm.ptr<i8>
    %448 = llvm.bitcast %447 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %449 = llvm.ptrtoint %448 : !llvm.ptr<i32> to i64
    %450 = llvm.mlir.constant(1 : index) : i64
    %451 = llvm.sub %445, %450  : i64
    %452 = llvm.add %449, %451  : i64
    %453 = llvm.urem %452, %445  : i64
    %454 = llvm.sub %452, %453  : i64
    %455 = llvm.inttoptr %454 : i64 to !llvm.ptr<i32>
    %456 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %457 = llvm.insertvalue %448, %456[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %458 = llvm.insertvalue %455, %457[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %459 = llvm.mlir.constant(0 : index) : i64
    %460 = llvm.insertvalue %459, %458[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %461 = llvm.insertvalue %434, %460[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %462 = llvm.insertvalue %435, %461[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %463 = llvm.insertvalue %436, %462[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %464 = llvm.insertvalue %437, %463[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %465 = llvm.insertvalue %440, %464[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %466 = llvm.insertvalue %439, %465[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %467 = llvm.insertvalue %437, %466[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %468 = llvm.insertvalue %438, %467[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %469 = llvm.mlir.constant(0 : index) : i64
    %470 = llvm.mlir.constant(2 : index) : i64
    %471 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb49(%469 : i64)
  ^bb49(%472: i64):  // 2 preds: ^bb48, ^bb59
    %473 = llvm.icmp "slt" %472, %470 : i64
    llvm.cond_br %473, ^bb50, ^bb60
  ^bb50:  // pred: ^bb49
    %474 = llvm.mlir.constant(0 : index) : i64
    %475 = llvm.mlir.constant(2 : index) : i64
    %476 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb51(%474 : i64)
  ^bb51(%477: i64):  // 2 preds: ^bb50, ^bb58
    %478 = llvm.icmp "slt" %477, %475 : i64
    llvm.cond_br %478, ^bb52, ^bb59
  ^bb52:  // pred: ^bb51
    %479 = llvm.mlir.constant(0 : index) : i64
    %480 = llvm.mlir.constant(2 : index) : i64
    %481 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb53(%479 : i64)
  ^bb53(%482: i64):  // 2 preds: ^bb52, ^bb57
    %483 = llvm.icmp "slt" %482, %480 : i64
    llvm.cond_br %483, ^bb54, ^bb58
  ^bb54:  // pred: ^bb53
    %484 = llvm.mlir.constant(0 : index) : i64
    %485 = llvm.mlir.constant(2 : index) : i64
    %486 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb55(%484 : i64)
  ^bb55(%487: i64):  // 2 preds: ^bb54, ^bb56
    %488 = llvm.icmp "slt" %487, %485 : i64
    llvm.cond_br %488, ^bb56, ^bb57
  ^bb56:  // pred: ^bb55
    %489 = llvm.extractvalue %308[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %490 = llvm.mlir.constant(4 : index) : i64
    %491 = llvm.mul %472, %490  : i64
    %492 = llvm.mlir.constant(2 : index) : i64
    %493 = llvm.mul %477, %492  : i64
    %494 = llvm.add %491, %493  : i64
    %495 = llvm.mlir.constant(2 : index) : i64
    %496 = llvm.mul %12, %495  : i64
    %497 = llvm.add %494, %496  : i64
    %498 = llvm.add %497, %487  : i64
    %499 = llvm.getelementptr %489[%498] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %500 = llvm.load %499 : !llvm.ptr<i1>
    %501 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %502 = llvm.add %472, %12  : i64
    %503 = llvm.add %502, %12  : i64
    %504 = llvm.add %503, %12  : i64
    %505 = llvm.getelementptr %501[%504] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %506 = llvm.load %505 : !llvm.ptr<i32>
    %507 = llvm.extractvalue %389[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %508 = llvm.mlir.constant(4 : index) : i64
    %509 = llvm.mul %477, %508  : i64
    %510 = llvm.mlir.constant(2 : index) : i64
    %511 = llvm.mul %482, %510  : i64
    %512 = llvm.add %509, %511  : i64
    %513 = llvm.add %512, %487  : i64
    %514 = llvm.getelementptr %507[%513] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %515 = llvm.load %514 : !llvm.ptr<i32>
    %516 = llvm.select %500, %506, %515 : i1, i32
    %517 = llvm.extractvalue %468[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %518 = llvm.mlir.constant(8 : index) : i64
    %519 = llvm.mul %472, %518  : i64
    %520 = llvm.mlir.constant(4 : index) : i64
    %521 = llvm.mul %477, %520  : i64
    %522 = llvm.add %519, %521  : i64
    %523 = llvm.mlir.constant(2 : index) : i64
    %524 = llvm.mul %482, %523  : i64
    %525 = llvm.add %522, %524  : i64
    %526 = llvm.add %525, %487  : i64
    %527 = llvm.getelementptr %517[%526] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %516, %527 : !llvm.ptr<i32>
    %528 = llvm.add %487, %486  : i64
    llvm.br ^bb55(%528 : i64)
  ^bb57:  // pred: ^bb55
    %529 = llvm.add %482, %481  : i64
    llvm.br ^bb53(%529 : i64)
  ^bb58:  // pred: ^bb53
    %530 = llvm.add %477, %476  : i64
    llvm.br ^bb51(%530 : i64)
  ^bb59:  // pred: ^bb51
    %531 = llvm.add %472, %471  : i64
    llvm.br ^bb49(%531 : i64)
  ^bb60:  // pred: ^bb49
    %532 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i16>, ptr<i16>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    %533 = llvm.insertvalue %218, %532[0] : !llvm.struct<(struct<(ptr<i16>, ptr<i16>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %534 = llvm.insertvalue %468, %533[1] : !llvm.struct<(struct<(ptr<i16>, ptr<i16>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    llvm.return %534 : !llvm.struct<(struct<(ptr<i16>, ptr<i16>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i16>, ptr<i16>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) attributes {input_names = ["v2_0"], llvm.emit_c_interface, output_names = ["v5_0", "v4_0"]} {
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
    %12 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<i16>, ptr<i16>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    llvm.store %12, %arg0 : !llvm.ptr<struct<(struct<(ptr<i16>, ptr<i16>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<i16>, ptr<i16>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<i16>, ptr<i16>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
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
    llvm.call @_mlir_ciface_main_graph(%2, %6) : (!llvm.ptr<struct<(struct<(ptr<i16>, ptr<i16>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) -> ()
    %44 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i16>, ptr<i16>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %45 = llvm.extractvalue %44[0] : !llvm.struct<(struct<(ptr<i16>, ptr<i16>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %46 = llvm.extractvalue %44[1] : !llvm.struct<(struct<(ptr<i16>, ptr<i16>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %47 = llvm.mlir.constant(2 : i64) : i64
    %48 = llvm.mlir.constant(16 : i64) : i64
    %49 = llvm.call @malloc(%48) : (i64) -> !llvm.ptr<i8>
    %50 = llvm.bitcast %49 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %51 = llvm.mlir.constant(4 : i64) : i64
    %52 = llvm.call @omTensorCreateUntyped(%51) : (i64) -> !llvm.ptr<i8>
    %53 = llvm.mlir.constant(1 : i64) : i64
    %54 = llvm.extractvalue %45[0] : !llvm.struct<(ptr<i16>, ptr<i16>, i64, array<4 x i64>, array<4 x i64>)> 
    %55 = llvm.bitcast %54 : !llvm.ptr<i16> to !llvm.ptr<i8>
    %56 = llvm.extractvalue %45[1] : !llvm.struct<(ptr<i16>, ptr<i16>, i64, array<4 x i64>, array<4 x i64>)> 
    %57 = llvm.bitcast %56 : !llvm.ptr<i16> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%52, %53, %55, %57) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %58 = llvm.mlir.constant(5 : i64) : i64
    llvm.call @omTensorSetDataType(%52, %58) : (!llvm.ptr<i8>, i64) -> ()
    %59 = llvm.call @omTensorGetShape(%52) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %60 = llvm.call @omTensorGetStrides(%52) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %61 = llvm.mlir.constant(0 : i64) : i64
    %62 = llvm.extractvalue %45[3, 0] : !llvm.struct<(ptr<i16>, ptr<i16>, i64, array<4 x i64>, array<4 x i64>)> 
    %63 = llvm.getelementptr %59[%61] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %62, %63 : !llvm.ptr<i64>
    %64 = llvm.extractvalue %45[4, 0] : !llvm.struct<(ptr<i16>, ptr<i16>, i64, array<4 x i64>, array<4 x i64>)> 
    %65 = llvm.getelementptr %60[%61] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %64, %65 : !llvm.ptr<i64>
    %66 = llvm.mlir.constant(1 : i64) : i64
    %67 = llvm.extractvalue %45[3, 1] : !llvm.struct<(ptr<i16>, ptr<i16>, i64, array<4 x i64>, array<4 x i64>)> 
    %68 = llvm.getelementptr %59[%66] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %67, %68 : !llvm.ptr<i64>
    %69 = llvm.extractvalue %45[4, 1] : !llvm.struct<(ptr<i16>, ptr<i16>, i64, array<4 x i64>, array<4 x i64>)> 
    %70 = llvm.getelementptr %60[%66] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %69, %70 : !llvm.ptr<i64>
    %71 = llvm.mlir.constant(2 : i64) : i64
    %72 = llvm.extractvalue %45[3, 2] : !llvm.struct<(ptr<i16>, ptr<i16>, i64, array<4 x i64>, array<4 x i64>)> 
    %73 = llvm.getelementptr %59[%71] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %72, %73 : !llvm.ptr<i64>
    %74 = llvm.extractvalue %45[4, 2] : !llvm.struct<(ptr<i16>, ptr<i16>, i64, array<4 x i64>, array<4 x i64>)> 
    %75 = llvm.getelementptr %60[%71] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %74, %75 : !llvm.ptr<i64>
    %76 = llvm.mlir.constant(3 : i64) : i64
    %77 = llvm.extractvalue %45[3, 3] : !llvm.struct<(ptr<i16>, ptr<i16>, i64, array<4 x i64>, array<4 x i64>)> 
    %78 = llvm.getelementptr %59[%76] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %77, %78 : !llvm.ptr<i64>
    %79 = llvm.extractvalue %45[4, 3] : !llvm.struct<(ptr<i16>, ptr<i16>, i64, array<4 x i64>, array<4 x i64>)> 
    %80 = llvm.getelementptr %60[%76] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %79, %80 : !llvm.ptr<i64>
    %81 = llvm.mlir.constant(0 : i64) : i64
    %82 = llvm.getelementptr %50[%81] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %52, %82 : !llvm.ptr<ptr<i8>>
    %83 = llvm.mlir.constant(4 : i64) : i64
    %84 = llvm.call @omTensorCreateUntyped(%83) : (i64) -> !llvm.ptr<i8>
    %85 = llvm.mlir.constant(1 : i64) : i64
    %86 = llvm.extractvalue %46[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %87 = llvm.bitcast %86 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %88 = llvm.extractvalue %46[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %89 = llvm.bitcast %88 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%84, %85, %87, %89) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %90 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%84, %90) : (!llvm.ptr<i8>, i64) -> ()
    %91 = llvm.call @omTensorGetShape(%84) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %92 = llvm.call @omTensorGetStrides(%84) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %93 = llvm.mlir.constant(0 : i64) : i64
    %94 = llvm.extractvalue %46[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %95 = llvm.getelementptr %91[%93] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %94, %95 : !llvm.ptr<i64>
    %96 = llvm.extractvalue %46[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %97 = llvm.getelementptr %92[%93] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %96, %97 : !llvm.ptr<i64>
    %98 = llvm.mlir.constant(1 : i64) : i64
    %99 = llvm.extractvalue %46[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %100 = llvm.getelementptr %91[%98] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %99, %100 : !llvm.ptr<i64>
    %101 = llvm.extractvalue %46[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %102 = llvm.getelementptr %92[%98] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %101, %102 : !llvm.ptr<i64>
    %103 = llvm.mlir.constant(2 : i64) : i64
    %104 = llvm.extractvalue %46[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %105 = llvm.getelementptr %91[%103] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %104, %105 : !llvm.ptr<i64>
    %106 = llvm.extractvalue %46[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %107 = llvm.getelementptr %92[%103] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %106, %107 : !llvm.ptr<i64>
    %108 = llvm.mlir.constant(3 : i64) : i64
    %109 = llvm.extractvalue %46[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %110 = llvm.getelementptr %91[%108] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %109, %110 : !llvm.ptr<i64>
    %111 = llvm.extractvalue %46[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
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

