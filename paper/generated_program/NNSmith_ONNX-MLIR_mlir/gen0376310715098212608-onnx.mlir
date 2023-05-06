module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 2 , 2 , 2] , \22name\22 : \22v1_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i32\22 , \22dims\22 : [2 , 2 , 2] , \22name\22 : \22v2_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [2 , 1 , 2] , \22name\22 : \22v6_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 2 , 2 , 2] , \22name\22 : \22v3_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.mlir.global internal constant @constant_6(dense<[[[4]], [[6]]]> : tensor<2x1x1xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<2 x array<1 x array<1 x i32>>>
  llvm.mlir.global internal constant @constant_5(dense<[[[4, 3]], [[6, 5]]]> : tensor<2x1x2xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<2 x array<1 x array<2 x i32>>>
  llvm.mlir.global internal constant @constant_4(dense<[[[7], [5]]]> : tensor<1x2x1xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x array<2 x array<1 x i32>>>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> attributes {input_names = ["v1_0"], llvm.emit_c_interface, output_names = ["v2_0", "v6_0", "v3_0"]} {
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
    %13 = llvm.mlir.addressof @constant_4 : !llvm.ptr<array<1 x array<2 x array<1 x i32>>>>
    %14 = llvm.bitcast %13 : !llvm.ptr<array<1 x array<2 x array<1 x i32>>>> to !llvm.ptr<i32>
    %15 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>
    %16 = llvm.insertvalue %14, %15[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %17 = llvm.insertvalue %14, %16[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %18 = llvm.mlir.constant(0 : index) : i64
    %19 = llvm.insertvalue %18, %17[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %20 = llvm.mlir.constant(1 : index) : i64
    %21 = llvm.insertvalue %20, %19[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %22 = llvm.mlir.constant(2 : index) : i64
    %23 = llvm.insertvalue %22, %21[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %24 = llvm.mlir.constant(2 : index) : i64
    %25 = llvm.insertvalue %24, %23[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %26 = llvm.mlir.constant(1 : index) : i64
    %27 = llvm.insertvalue %26, %25[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %28 = llvm.mlir.constant(1 : index) : i64
    %29 = llvm.insertvalue %28, %27[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %30 = llvm.mlir.constant(1 : index) : i64
    %31 = llvm.insertvalue %30, %29[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %32 = llvm.mlir.addressof @constant_5 : !llvm.ptr<array<2 x array<1 x array<2 x i32>>>>
    %33 = llvm.bitcast %32 : !llvm.ptr<array<2 x array<1 x array<2 x i32>>>> to !llvm.ptr<i32>
    %34 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>
    %35 = llvm.insertvalue %33, %34[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %36 = llvm.insertvalue %33, %35[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %37 = llvm.mlir.constant(0 : index) : i64
    %38 = llvm.insertvalue %37, %36[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %39 = llvm.mlir.constant(2 : index) : i64
    %40 = llvm.insertvalue %39, %38[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %41 = llvm.mlir.constant(2 : index) : i64
    %42 = llvm.insertvalue %41, %40[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %43 = llvm.mlir.constant(1 : index) : i64
    %44 = llvm.insertvalue %43, %42[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %45 = llvm.mlir.constant(2 : index) : i64
    %46 = llvm.insertvalue %45, %44[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %47 = llvm.mlir.constant(2 : index) : i64
    %48 = llvm.insertvalue %47, %46[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %49 = llvm.mlir.constant(1 : index) : i64
    %50 = llvm.insertvalue %49, %48[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %51 = llvm.mlir.addressof @constant_6 : !llvm.ptr<array<2 x array<1 x array<1 x i32>>>>
    %52 = llvm.bitcast %51 : !llvm.ptr<array<2 x array<1 x array<1 x i32>>>> to !llvm.ptr<i32>
    %53 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>
    %54 = llvm.insertvalue %52, %53[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %55 = llvm.insertvalue %52, %54[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %56 = llvm.mlir.constant(0 : index) : i64
    %57 = llvm.insertvalue %56, %55[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %58 = llvm.mlir.constant(2 : index) : i64
    %59 = llvm.insertvalue %58, %57[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %60 = llvm.mlir.constant(1 : index) : i64
    %61 = llvm.insertvalue %60, %59[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %62 = llvm.mlir.constant(1 : index) : i64
    %63 = llvm.insertvalue %62, %61[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %64 = llvm.mlir.constant(1 : index) : i64
    %65 = llvm.insertvalue %64, %63[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %66 = llvm.mlir.constant(1 : index) : i64
    %67 = llvm.insertvalue %66, %65[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %68 = llvm.mlir.constant(1 : index) : i64
    %69 = llvm.insertvalue %68, %67[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %70 = llvm.mlir.constant(2 : index) : i64
    %71 = llvm.mlir.constant(2 : index) : i64
    %72 = llvm.mlir.constant(2 : index) : i64
    %73 = llvm.mlir.constant(1 : index) : i64
    %74 = llvm.mlir.constant(4 : index) : i64
    %75 = llvm.mlir.constant(8 : index) : i64
    %76 = llvm.mlir.null : !llvm.ptr<i32>
    %77 = llvm.getelementptr %76[%75] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %78 = llvm.ptrtoint %77 : !llvm.ptr<i32> to i64
    %79 = llvm.mlir.constant(16 : index) : i64
    %80 = llvm.add %78, %79  : i64
    %81 = llvm.call @malloc(%80) : (i64) -> !llvm.ptr<i8>
    %82 = llvm.bitcast %81 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %83 = llvm.ptrtoint %82 : !llvm.ptr<i32> to i64
    %84 = llvm.mlir.constant(1 : index) : i64
    %85 = llvm.sub %79, %84  : i64
    %86 = llvm.add %83, %85  : i64
    %87 = llvm.urem %86, %79  : i64
    %88 = llvm.sub %86, %87  : i64
    %89 = llvm.inttoptr %88 : i64 to !llvm.ptr<i32>
    %90 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>
    %91 = llvm.insertvalue %82, %90[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %92 = llvm.insertvalue %89, %91[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %93 = llvm.mlir.constant(0 : index) : i64
    %94 = llvm.insertvalue %93, %92[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %95 = llvm.insertvalue %70, %94[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %96 = llvm.insertvalue %71, %95[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %97 = llvm.insertvalue %72, %96[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %98 = llvm.insertvalue %74, %97[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %99 = llvm.insertvalue %72, %98[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %100 = llvm.insertvalue %73, %99[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %101 = llvm.mlir.constant(0 : index) : i64
    %102 = llvm.mlir.constant(2 : index) : i64
    %103 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%101 : i64)
  ^bb1(%104: i64):  // 2 preds: ^bb0, ^bb8
    %105 = llvm.icmp "slt" %104, %102 : i64
    llvm.cond_br %105, ^bb2, ^bb9
  ^bb2:  // pred: ^bb1
    %106 = llvm.mlir.constant(0 : index) : i64
    %107 = llvm.mlir.constant(2 : index) : i64
    %108 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%106 : i64)
  ^bb3(%109: i64):  // 2 preds: ^bb2, ^bb7
    %110 = llvm.icmp "slt" %109, %107 : i64
    llvm.cond_br %110, ^bb4, ^bb8
  ^bb4:  // pred: ^bb3
    %111 = llvm.mlir.constant(0 : index) : i64
    %112 = llvm.mlir.constant(2 : index) : i64
    %113 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%111 : i64)
  ^bb5(%114: i64):  // 2 preds: ^bb4, ^bb6
    %115 = llvm.icmp "slt" %114, %112 : i64
    llvm.cond_br %115, ^bb6, ^bb7
  ^bb6:  // pred: ^bb5
    %116 = llvm.extractvalue %50[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %117 = llvm.mlir.constant(2 : index) : i64
    %118 = llvm.mul %104, %117  : i64
    %119 = llvm.mlir.constant(2 : index) : i64
    %120 = llvm.mul %12, %119  : i64
    %121 = llvm.add %118, %120  : i64
    %122 = llvm.add %121, %114  : i64
    %123 = llvm.getelementptr %116[%122] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %124 = llvm.load %123 : !llvm.ptr<i32>
    %125 = llvm.extractvalue %31[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %126 = llvm.mlir.constant(2 : index) : i64
    %127 = llvm.mul %12, %126  : i64
    %128 = llvm.add %127, %109  : i64
    %129 = llvm.add %128, %12  : i64
    %130 = llvm.getelementptr %125[%129] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %131 = llvm.load %130 : !llvm.ptr<i32>
    %132 = llvm.icmp "sgt" %124, %131 : i32
    %133 = llvm.select %132, %124, %131 : i1, i32
    %134 = llvm.extractvalue %100[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %135 = llvm.mlir.constant(4 : index) : i64
    %136 = llvm.mul %104, %135  : i64
    %137 = llvm.mlir.constant(2 : index) : i64
    %138 = llvm.mul %109, %137  : i64
    %139 = llvm.add %136, %138  : i64
    %140 = llvm.add %139, %114  : i64
    %141 = llvm.getelementptr %134[%140] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %133, %141 : !llvm.ptr<i32>
    %142 = llvm.add %114, %113  : i64
    llvm.br ^bb5(%142 : i64)
  ^bb7:  // pred: ^bb5
    %143 = llvm.add %109, %108  : i64
    llvm.br ^bb3(%143 : i64)
  ^bb8:  // pred: ^bb3
    %144 = llvm.add %104, %103  : i64
    llvm.br ^bb1(%144 : i64)
  ^bb9:  // pred: ^bb1
    %145 = llvm.mlir.constant(2 : index) : i64
    %146 = llvm.mlir.constant(2 : index) : i64
    %147 = llvm.mlir.constant(2 : index) : i64
    %148 = llvm.mlir.constant(1 : index) : i64
    %149 = llvm.mlir.constant(4 : index) : i64
    %150 = llvm.mlir.constant(8 : index) : i64
    %151 = llvm.mlir.null : !llvm.ptr<i32>
    %152 = llvm.getelementptr %151[%150] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %153 = llvm.ptrtoint %152 : !llvm.ptr<i32> to i64
    %154 = llvm.mlir.constant(16 : index) : i64
    %155 = llvm.add %153, %154  : i64
    %156 = llvm.call @malloc(%155) : (i64) -> !llvm.ptr<i8>
    %157 = llvm.bitcast %156 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %158 = llvm.ptrtoint %157 : !llvm.ptr<i32> to i64
    %159 = llvm.mlir.constant(1 : index) : i64
    %160 = llvm.sub %154, %159  : i64
    %161 = llvm.add %158, %160  : i64
    %162 = llvm.urem %161, %154  : i64
    %163 = llvm.sub %161, %162  : i64
    %164 = llvm.inttoptr %163 : i64 to !llvm.ptr<i32>
    %165 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>
    %166 = llvm.insertvalue %157, %165[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %167 = llvm.insertvalue %164, %166[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %168 = llvm.mlir.constant(0 : index) : i64
    %169 = llvm.insertvalue %168, %167[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %170 = llvm.insertvalue %145, %169[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %171 = llvm.insertvalue %146, %170[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %172 = llvm.insertvalue %147, %171[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %173 = llvm.insertvalue %149, %172[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %174 = llvm.insertvalue %147, %173[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %175 = llvm.insertvalue %148, %174[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %176 = llvm.mlir.constant(0 : index) : i64
    %177 = llvm.mlir.constant(2 : index) : i64
    %178 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb10(%176 : i64)
  ^bb10(%179: i64):  // 2 preds: ^bb9, ^bb17
    %180 = llvm.icmp "slt" %179, %177 : i64
    llvm.cond_br %180, ^bb11, ^bb18
  ^bb11:  // pred: ^bb10
    %181 = llvm.mlir.constant(0 : index) : i64
    %182 = llvm.mlir.constant(2 : index) : i64
    %183 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb12(%181 : i64)
  ^bb12(%184: i64):  // 2 preds: ^bb11, ^bb16
    %185 = llvm.icmp "slt" %184, %182 : i64
    llvm.cond_br %185, ^bb13, ^bb17
  ^bb13:  // pred: ^bb12
    %186 = llvm.mlir.constant(0 : index) : i64
    %187 = llvm.mlir.constant(2 : index) : i64
    %188 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb14(%186 : i64)
  ^bb14(%189: i64):  // 2 preds: ^bb13, ^bb15
    %190 = llvm.icmp "slt" %189, %187 : i64
    llvm.cond_br %190, ^bb15, ^bb16
  ^bb15:  // pred: ^bb14
    %191 = llvm.extractvalue %100[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %192 = llvm.mlir.constant(4 : index) : i64
    %193 = llvm.mul %179, %192  : i64
    %194 = llvm.mlir.constant(2 : index) : i64
    %195 = llvm.mul %184, %194  : i64
    %196 = llvm.add %193, %195  : i64
    %197 = llvm.add %196, %189  : i64
    %198 = llvm.getelementptr %191[%197] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %199 = llvm.load %198 : !llvm.ptr<i32>
    %200 = llvm.extractvalue %175[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %201 = llvm.mlir.constant(4 : index) : i64
    %202 = llvm.mul %189, %201  : i64
    %203 = llvm.mlir.constant(2 : index) : i64
    %204 = llvm.mul %184, %203  : i64
    %205 = llvm.add %202, %204  : i64
    %206 = llvm.add %205, %179  : i64
    %207 = llvm.getelementptr %200[%206] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %199, %207 : !llvm.ptr<i32>
    %208 = llvm.add %189, %188  : i64
    llvm.br ^bb14(%208 : i64)
  ^bb16:  // pred: ^bb14
    %209 = llvm.add %184, %183  : i64
    llvm.br ^bb12(%209 : i64)
  ^bb17:  // pred: ^bb12
    %210 = llvm.add %179, %178  : i64
    llvm.br ^bb10(%210 : i64)
  ^bb18:  // pred: ^bb10
    %211 = llvm.mlir.constant(2 : index) : i64
    %212 = llvm.mlir.constant(2 : index) : i64
    %213 = llvm.mlir.constant(2 : index) : i64
    %214 = llvm.mlir.constant(1 : index) : i64
    %215 = llvm.mlir.constant(4 : index) : i64
    %216 = llvm.mlir.constant(8 : index) : i64
    %217 = llvm.mlir.null : !llvm.ptr<i32>
    %218 = llvm.getelementptr %217[%216] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %219 = llvm.ptrtoint %218 : !llvm.ptr<i32> to i64
    %220 = llvm.mlir.constant(16 : index) : i64
    %221 = llvm.add %219, %220  : i64
    %222 = llvm.call @malloc(%221) : (i64) -> !llvm.ptr<i8>
    %223 = llvm.bitcast %222 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %224 = llvm.ptrtoint %223 : !llvm.ptr<i32> to i64
    %225 = llvm.mlir.constant(1 : index) : i64
    %226 = llvm.sub %220, %225  : i64
    %227 = llvm.add %224, %226  : i64
    %228 = llvm.urem %227, %220  : i64
    %229 = llvm.sub %227, %228  : i64
    %230 = llvm.inttoptr %229 : i64 to !llvm.ptr<i32>
    %231 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>
    %232 = llvm.insertvalue %223, %231[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %233 = llvm.insertvalue %230, %232[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %234 = llvm.mlir.constant(0 : index) : i64
    %235 = llvm.insertvalue %234, %233[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %236 = llvm.insertvalue %211, %235[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %237 = llvm.insertvalue %212, %236[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %238 = llvm.insertvalue %213, %237[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %239 = llvm.insertvalue %215, %238[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %240 = llvm.insertvalue %213, %239[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %241 = llvm.insertvalue %214, %240[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %242 = llvm.mlir.constant(0 : index) : i64
    %243 = llvm.mlir.constant(2 : index) : i64
    %244 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%242 : i64)
  ^bb19(%245: i64):  // 2 preds: ^bb18, ^bb26
    %246 = llvm.icmp "slt" %245, %243 : i64
    llvm.cond_br %246, ^bb20, ^bb27
  ^bb20:  // pred: ^bb19
    %247 = llvm.mlir.constant(0 : index) : i64
    %248 = llvm.mlir.constant(2 : index) : i64
    %249 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb21(%247 : i64)
  ^bb21(%250: i64):  // 2 preds: ^bb20, ^bb25
    %251 = llvm.icmp "slt" %250, %248 : i64
    llvm.cond_br %251, ^bb22, ^bb26
  ^bb22:  // pred: ^bb21
    %252 = llvm.mlir.constant(0 : index) : i64
    %253 = llvm.mlir.constant(2 : index) : i64
    %254 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb23(%252 : i64)
  ^bb23(%255: i64):  // 2 preds: ^bb22, ^bb24
    %256 = llvm.icmp "slt" %255, %253 : i64
    llvm.cond_br %256, ^bb24, ^bb25
  ^bb24:  // pred: ^bb23
    %257 = llvm.extractvalue %100[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %258 = llvm.mlir.constant(4 : index) : i64
    %259 = llvm.mul %245, %258  : i64
    %260 = llvm.mlir.constant(2 : index) : i64
    %261 = llvm.mul %250, %260  : i64
    %262 = llvm.add %259, %261  : i64
    %263 = llvm.add %262, %255  : i64
    %264 = llvm.getelementptr %257[%263] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %265 = llvm.load %264 : !llvm.ptr<i32>
    %266 = llvm.extractvalue %69[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %267 = llvm.add %245, %12  : i64
    %268 = llvm.add %267, %12  : i64
    %269 = llvm.getelementptr %266[%268] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %270 = llvm.load %269 : !llvm.ptr<i32>
    %271 = llvm.add %265, %270  : i32
    %272 = llvm.extractvalue %241[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %273 = llvm.mlir.constant(4 : index) : i64
    %274 = llvm.mul %245, %273  : i64
    %275 = llvm.mlir.constant(2 : index) : i64
    %276 = llvm.mul %250, %275  : i64
    %277 = llvm.add %274, %276  : i64
    %278 = llvm.add %277, %255  : i64
    %279 = llvm.getelementptr %272[%278] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %271, %279 : !llvm.ptr<i32>
    %280 = llvm.add %255, %254  : i64
    llvm.br ^bb23(%280 : i64)
  ^bb25:  // pred: ^bb23
    %281 = llvm.add %250, %249  : i64
    llvm.br ^bb21(%281 : i64)
  ^bb26:  // pred: ^bb21
    %282 = llvm.add %245, %244  : i64
    llvm.br ^bb19(%282 : i64)
  ^bb27:  // pred: ^bb19
    %283 = llvm.mlir.constant(2 : index) : i64
    %284 = llvm.mlir.constant(1 : index) : i64
    %285 = llvm.mlir.constant(2 : index) : i64
    %286 = llvm.mlir.constant(1 : index) : i64
    %287 = llvm.mlir.constant(2 : index) : i64
    %288 = llvm.mlir.constant(4 : index) : i64
    %289 = llvm.mlir.null : !llvm.ptr<i32>
    %290 = llvm.getelementptr %289[%288] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %291 = llvm.ptrtoint %290 : !llvm.ptr<i32> to i64
    %292 = llvm.mlir.constant(16 : index) : i64
    %293 = llvm.add %291, %292  : i64
    %294 = llvm.call @malloc(%293) : (i64) -> !llvm.ptr<i8>
    %295 = llvm.bitcast %294 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %296 = llvm.ptrtoint %295 : !llvm.ptr<i32> to i64
    %297 = llvm.mlir.constant(1 : index) : i64
    %298 = llvm.sub %292, %297  : i64
    %299 = llvm.add %296, %298  : i64
    %300 = llvm.urem %299, %292  : i64
    %301 = llvm.sub %299, %300  : i64
    %302 = llvm.inttoptr %301 : i64 to !llvm.ptr<i32>
    %303 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>
    %304 = llvm.insertvalue %295, %303[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %305 = llvm.insertvalue %302, %304[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %306 = llvm.mlir.constant(0 : index) : i64
    %307 = llvm.insertvalue %306, %305[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %308 = llvm.insertvalue %283, %307[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %309 = llvm.insertvalue %284, %308[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %310 = llvm.insertvalue %285, %309[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %311 = llvm.insertvalue %287, %310[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %312 = llvm.insertvalue %285, %311[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %313 = llvm.insertvalue %286, %312[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %314 = llvm.mlir.constant(0 : index) : i64
    %315 = llvm.mlir.constant(2 : index) : i64
    %316 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb28(%314 : i64)
  ^bb28(%317: i64):  // 2 preds: ^bb27, ^bb35
    %318 = llvm.icmp "slt" %317, %315 : i64
    llvm.cond_br %318, ^bb29, ^bb36
  ^bb29:  // pred: ^bb28
    %319 = llvm.mlir.constant(0 : index) : i64
    %320 = llvm.mlir.constant(1 : index) : i64
    %321 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb30(%319 : i64)
  ^bb30(%322: i64):  // 2 preds: ^bb29, ^bb34
    %323 = llvm.icmp "slt" %322, %320 : i64
    llvm.cond_br %323, ^bb31, ^bb35
  ^bb31:  // pred: ^bb30
    %324 = llvm.mlir.constant(0 : index) : i64
    %325 = llvm.mlir.constant(2 : index) : i64
    %326 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb32(%324 : i64)
  ^bb32(%327: i64):  // 2 preds: ^bb31, ^bb33
    %328 = llvm.icmp "slt" %327, %325 : i64
    llvm.cond_br %328, ^bb33, ^bb34
  ^bb33:  // pred: ^bb32
    %329 = llvm.extractvalue %241[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %330 = llvm.mlir.constant(4 : index) : i64
    %331 = llvm.mul %317, %330  : i64
    %332 = llvm.mlir.constant(2 : index) : i64
    %333 = llvm.mul %322, %332  : i64
    %334 = llvm.add %331, %333  : i64
    %335 = llvm.add %334, %327  : i64
    %336 = llvm.getelementptr %329[%335] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %337 = llvm.load %336 : !llvm.ptr<i32>
    %338 = llvm.extractvalue %313[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %339 = llvm.mlir.constant(2 : index) : i64
    %340 = llvm.mul %317, %339  : i64
    %341 = llvm.mlir.constant(2 : index) : i64
    %342 = llvm.mul %322, %341  : i64
    %343 = llvm.add %340, %342  : i64
    %344 = llvm.add %343, %327  : i64
    %345 = llvm.getelementptr %338[%344] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %337, %345 : !llvm.ptr<i32>
    %346 = llvm.add %327, %326  : i64
    llvm.br ^bb32(%346 : i64)
  ^bb34:  // pred: ^bb32
    %347 = llvm.add %322, %321  : i64
    llvm.br ^bb30(%347 : i64)
  ^bb35:  // pred: ^bb30
    %348 = llvm.add %317, %316  : i64
    llvm.br ^bb28(%348 : i64)
  ^bb36:  // pred: ^bb28
    %349 = llvm.mlir.constant(1 : index) : i64
    %350 = llvm.mlir.constant(2 : index) : i64
    %351 = llvm.mlir.constant(2 : index) : i64
    %352 = llvm.mlir.constant(2 : index) : i64
    %353 = llvm.mlir.constant(1 : index) : i64
    %354 = llvm.mlir.constant(4 : index) : i64
    %355 = llvm.mlir.constant(8 : index) : i64
    %356 = llvm.mlir.constant(8 : index) : i64
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
    %376 = llvm.insertvalue %349, %375[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %377 = llvm.insertvalue %350, %376[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %378 = llvm.insertvalue %351, %377[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %379 = llvm.insertvalue %352, %378[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %380 = llvm.insertvalue %355, %379[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %381 = llvm.insertvalue %354, %380[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %382 = llvm.insertvalue %352, %381[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %383 = llvm.insertvalue %353, %382[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %384 = llvm.mlir.constant(0 : index) : i64
    %385 = llvm.mlir.constant(1 : index) : i64
    %386 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb37(%384 : i64)
  ^bb37(%387: i64):  // 2 preds: ^bb36, ^bb47
    %388 = llvm.icmp "slt" %387, %385 : i64
    llvm.cond_br %388, ^bb38, ^bb48
  ^bb38:  // pred: ^bb37
    %389 = llvm.mlir.constant(0 : index) : i64
    %390 = llvm.mlir.constant(2 : index) : i64
    %391 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb39(%389 : i64)
  ^bb39(%392: i64):  // 2 preds: ^bb38, ^bb46
    %393 = llvm.icmp "slt" %392, %390 : i64
    llvm.cond_br %393, ^bb40, ^bb47
  ^bb40:  // pred: ^bb39
    %394 = llvm.mlir.constant(0 : index) : i64
    %395 = llvm.mlir.constant(2 : index) : i64
    %396 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb41(%394 : i64)
  ^bb41(%397: i64):  // 2 preds: ^bb40, ^bb45
    %398 = llvm.icmp "slt" %397, %395 : i64
    llvm.cond_br %398, ^bb42, ^bb46
  ^bb42:  // pred: ^bb41
    %399 = llvm.mlir.constant(0 : index) : i64
    %400 = llvm.mlir.constant(2 : index) : i64
    %401 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb43(%399 : i64)
  ^bb43(%402: i64):  // 2 preds: ^bb42, ^bb44
    %403 = llvm.icmp "slt" %402, %400 : i64
    llvm.cond_br %403, ^bb44, ^bb45
  ^bb44:  // pred: ^bb43
    %404 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %405 = llvm.mlir.constant(8 : index) : i64
    %406 = llvm.mul %387, %405  : i64
    %407 = llvm.mlir.constant(4 : index) : i64
    %408 = llvm.mul %392, %407  : i64
    %409 = llvm.add %406, %408  : i64
    %410 = llvm.mlir.constant(2 : index) : i64
    %411 = llvm.mul %397, %410  : i64
    %412 = llvm.add %409, %411  : i64
    %413 = llvm.add %412, %402  : i64
    %414 = llvm.getelementptr %404[%413] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %415 = llvm.load %414 : !llvm.ptr<i32>
    %416 = llvm.extractvalue %100[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %417 = llvm.mlir.constant(4 : index) : i64
    %418 = llvm.mul %392, %417  : i64
    %419 = llvm.mlir.constant(2 : index) : i64
    %420 = llvm.mul %397, %419  : i64
    %421 = llvm.add %418, %420  : i64
    %422 = llvm.add %421, %402  : i64
    %423 = llvm.getelementptr %416[%422] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %424 = llvm.load %423 : !llvm.ptr<i32>
    %425 = llvm.add %415, %424  : i32
    %426 = llvm.extractvalue %383[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %427 = llvm.mlir.constant(8 : index) : i64
    %428 = llvm.mul %387, %427  : i64
    %429 = llvm.mlir.constant(4 : index) : i64
    %430 = llvm.mul %392, %429  : i64
    %431 = llvm.add %428, %430  : i64
    %432 = llvm.mlir.constant(2 : index) : i64
    %433 = llvm.mul %397, %432  : i64
    %434 = llvm.add %431, %433  : i64
    %435 = llvm.add %434, %402  : i64
    %436 = llvm.getelementptr %426[%435] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %425, %436 : !llvm.ptr<i32>
    %437 = llvm.add %402, %401  : i64
    llvm.br ^bb43(%437 : i64)
  ^bb45:  // pred: ^bb43
    %438 = llvm.add %397, %396  : i64
    llvm.br ^bb41(%438 : i64)
  ^bb46:  // pred: ^bb41
    %439 = llvm.add %392, %391  : i64
    llvm.br ^bb39(%439 : i64)
  ^bb47:  // pred: ^bb39
    %440 = llvm.add %387, %386  : i64
    llvm.br ^bb37(%440 : i64)
  ^bb48:  // pred: ^bb37
    %441 = llvm.mlir.constant(1 : index) : i64
    %442 = llvm.mlir.constant(2 : index) : i64
    %443 = llvm.mlir.constant(2 : index) : i64
    %444 = llvm.mlir.constant(2 : index) : i64
    %445 = llvm.mlir.constant(1 : index) : i64
    %446 = llvm.mlir.constant(4 : index) : i64
    %447 = llvm.mlir.constant(8 : index) : i64
    %448 = llvm.mlir.constant(8 : index) : i64
    %449 = llvm.mlir.null : !llvm.ptr<i32>
    %450 = llvm.getelementptr %449[%448] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %451 = llvm.ptrtoint %450 : !llvm.ptr<i32> to i64
    %452 = llvm.mlir.constant(16 : index) : i64
    %453 = llvm.add %451, %452  : i64
    %454 = llvm.call @malloc(%453) : (i64) -> !llvm.ptr<i8>
    %455 = llvm.bitcast %454 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %456 = llvm.ptrtoint %455 : !llvm.ptr<i32> to i64
    %457 = llvm.mlir.constant(1 : index) : i64
    %458 = llvm.sub %452, %457  : i64
    %459 = llvm.add %456, %458  : i64
    %460 = llvm.urem %459, %452  : i64
    %461 = llvm.sub %459, %460  : i64
    %462 = llvm.inttoptr %461 : i64 to !llvm.ptr<i32>
    %463 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %464 = llvm.insertvalue %455, %463[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %465 = llvm.insertvalue %462, %464[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %466 = llvm.mlir.constant(0 : index) : i64
    %467 = llvm.insertvalue %466, %465[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %468 = llvm.insertvalue %441, %467[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %469 = llvm.insertvalue %442, %468[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %470 = llvm.insertvalue %443, %469[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %471 = llvm.insertvalue %444, %470[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %472 = llvm.insertvalue %447, %471[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %473 = llvm.insertvalue %446, %472[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %474 = llvm.insertvalue %444, %473[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %475 = llvm.insertvalue %445, %474[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %476 = llvm.mlir.constant(0 : index) : i64
    %477 = llvm.mlir.constant(1 : index) : i64
    %478 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb49(%476 : i64)
  ^bb49(%479: i64):  // 2 preds: ^bb48, ^bb59
    %480 = llvm.icmp "slt" %479, %477 : i64
    llvm.cond_br %480, ^bb50, ^bb60
  ^bb50:  // pred: ^bb49
    %481 = llvm.mlir.constant(0 : index) : i64
    %482 = llvm.mlir.constant(2 : index) : i64
    %483 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb51(%481 : i64)
  ^bb51(%484: i64):  // 2 preds: ^bb50, ^bb58
    %485 = llvm.icmp "slt" %484, %482 : i64
    llvm.cond_br %485, ^bb52, ^bb59
  ^bb52:  // pred: ^bb51
    %486 = llvm.mlir.constant(0 : index) : i64
    %487 = llvm.mlir.constant(2 : index) : i64
    %488 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb53(%486 : i64)
  ^bb53(%489: i64):  // 2 preds: ^bb52, ^bb57
    %490 = llvm.icmp "slt" %489, %487 : i64
    llvm.cond_br %490, ^bb54, ^bb58
  ^bb54:  // pred: ^bb53
    %491 = llvm.mlir.constant(0 : index) : i64
    %492 = llvm.mlir.constant(2 : index) : i64
    %493 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb55(%491 : i64)
  ^bb55(%494: i64):  // 2 preds: ^bb54, ^bb56
    %495 = llvm.icmp "slt" %494, %492 : i64
    llvm.cond_br %495, ^bb56, ^bb57
  ^bb56:  // pred: ^bb55
    %496 = llvm.extractvalue %383[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %497 = llvm.mlir.constant(8 : index) : i64
    %498 = llvm.mul %479, %497  : i64
    %499 = llvm.mlir.constant(4 : index) : i64
    %500 = llvm.mul %484, %499  : i64
    %501 = llvm.add %498, %500  : i64
    %502 = llvm.mlir.constant(2 : index) : i64
    %503 = llvm.mul %489, %502  : i64
    %504 = llvm.add %501, %503  : i64
    %505 = llvm.add %504, %494  : i64
    %506 = llvm.getelementptr %496[%505] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %507 = llvm.load %506 : !llvm.ptr<i32>
    %508 = llvm.extractvalue %69[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %509 = llvm.add %484, %12  : i64
    %510 = llvm.add %509, %12  : i64
    %511 = llvm.getelementptr %508[%510] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %512 = llvm.load %511 : !llvm.ptr<i32>
    %513 = llvm.add %507, %512  : i32
    %514 = llvm.extractvalue %475[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %515 = llvm.mlir.constant(8 : index) : i64
    %516 = llvm.mul %479, %515  : i64
    %517 = llvm.mlir.constant(4 : index) : i64
    %518 = llvm.mul %484, %517  : i64
    %519 = llvm.add %516, %518  : i64
    %520 = llvm.mlir.constant(2 : index) : i64
    %521 = llvm.mul %489, %520  : i64
    %522 = llvm.add %519, %521  : i64
    %523 = llvm.add %522, %494  : i64
    %524 = llvm.getelementptr %514[%523] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %513, %524 : !llvm.ptr<i32>
    %525 = llvm.add %494, %493  : i64
    llvm.br ^bb55(%525 : i64)
  ^bb57:  // pred: ^bb55
    %526 = llvm.add %489, %488  : i64
    llvm.br ^bb53(%526 : i64)
  ^bb58:  // pred: ^bb53
    %527 = llvm.add %484, %483  : i64
    llvm.br ^bb51(%527 : i64)
  ^bb59:  // pred: ^bb51
    %528 = llvm.add %479, %478  : i64
    llvm.br ^bb49(%528 : i64)
  ^bb60:  // pred: ^bb49
    %529 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    %530 = llvm.insertvalue %175, %529[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %531 = llvm.insertvalue %313, %530[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %532 = llvm.insertvalue %475, %531[2] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    llvm.return %532 : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) attributes {input_names = ["v1_0"], llvm.emit_c_interface, output_names = ["v2_0", "v6_0", "v3_0"]} {
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
    %12 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    llvm.store %12, %arg0 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
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
    llvm.call @_mlir_ciface_main_graph(%2, %6) : (!llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) -> ()
    %44 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %45 = llvm.extractvalue %44[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %46 = llvm.extractvalue %44[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %47 = llvm.extractvalue %44[2] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %48 = llvm.mlir.constant(3 : i64) : i64
    %49 = llvm.mlir.constant(24 : i64) : i64
    %50 = llvm.call @malloc(%49) : (i64) -> !llvm.ptr<i8>
    %51 = llvm.bitcast %50 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %52 = llvm.mlir.constant(3 : i64) : i64
    %53 = llvm.call @omTensorCreateUntyped(%52) : (i64) -> !llvm.ptr<i8>
    %54 = llvm.mlir.constant(1 : i64) : i64
    %55 = llvm.extractvalue %45[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %56 = llvm.bitcast %55 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %57 = llvm.extractvalue %45[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %58 = llvm.bitcast %57 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%53, %54, %56, %58) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %59 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%53, %59) : (!llvm.ptr<i8>, i64) -> ()
    %60 = llvm.call @omTensorGetShape(%53) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %61 = llvm.call @omTensorGetStrides(%53) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %62 = llvm.mlir.constant(0 : i64) : i64
    %63 = llvm.extractvalue %45[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %64 = llvm.getelementptr %60[%62] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %63, %64 : !llvm.ptr<i64>
    %65 = llvm.extractvalue %45[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %66 = llvm.getelementptr %61[%62] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %65, %66 : !llvm.ptr<i64>
    %67 = llvm.mlir.constant(1 : i64) : i64
    %68 = llvm.extractvalue %45[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %69 = llvm.getelementptr %60[%67] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %68, %69 : !llvm.ptr<i64>
    %70 = llvm.extractvalue %45[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %71 = llvm.getelementptr %61[%67] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %70, %71 : !llvm.ptr<i64>
    %72 = llvm.mlir.constant(2 : i64) : i64
    %73 = llvm.extractvalue %45[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %74 = llvm.getelementptr %60[%72] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %73, %74 : !llvm.ptr<i64>
    %75 = llvm.extractvalue %45[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %76 = llvm.getelementptr %61[%72] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %75, %76 : !llvm.ptr<i64>
    %77 = llvm.mlir.constant(0 : i64) : i64
    %78 = llvm.getelementptr %51[%77] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %53, %78 : !llvm.ptr<ptr<i8>>
    %79 = llvm.mlir.constant(3 : i64) : i64
    %80 = llvm.call @omTensorCreateUntyped(%79) : (i64) -> !llvm.ptr<i8>
    %81 = llvm.mlir.constant(1 : i64) : i64
    %82 = llvm.extractvalue %46[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %83 = llvm.bitcast %82 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %84 = llvm.extractvalue %46[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %85 = llvm.bitcast %84 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%80, %81, %83, %85) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %86 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%80, %86) : (!llvm.ptr<i8>, i64) -> ()
    %87 = llvm.call @omTensorGetShape(%80) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %88 = llvm.call @omTensorGetStrides(%80) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %89 = llvm.mlir.constant(0 : i64) : i64
    %90 = llvm.extractvalue %46[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %91 = llvm.getelementptr %87[%89] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %90, %91 : !llvm.ptr<i64>
    %92 = llvm.extractvalue %46[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %93 = llvm.getelementptr %88[%89] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %92, %93 : !llvm.ptr<i64>
    %94 = llvm.mlir.constant(1 : i64) : i64
    %95 = llvm.extractvalue %46[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %96 = llvm.getelementptr %87[%94] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %95, %96 : !llvm.ptr<i64>
    %97 = llvm.extractvalue %46[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %98 = llvm.getelementptr %88[%94] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %97, %98 : !llvm.ptr<i64>
    %99 = llvm.mlir.constant(2 : i64) : i64
    %100 = llvm.extractvalue %46[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %101 = llvm.getelementptr %87[%99] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %100, %101 : !llvm.ptr<i64>
    %102 = llvm.extractvalue %46[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %103 = llvm.getelementptr %88[%99] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %102, %103 : !llvm.ptr<i64>
    %104 = llvm.mlir.constant(1 : i64) : i64
    %105 = llvm.getelementptr %51[%104] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %80, %105 : !llvm.ptr<ptr<i8>>
    %106 = llvm.mlir.constant(4 : i64) : i64
    %107 = llvm.call @omTensorCreateUntyped(%106) : (i64) -> !llvm.ptr<i8>
    %108 = llvm.mlir.constant(1 : i64) : i64
    %109 = llvm.extractvalue %47[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %110 = llvm.bitcast %109 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %111 = llvm.extractvalue %47[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %112 = llvm.bitcast %111 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%107, %108, %110, %112) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %113 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%107, %113) : (!llvm.ptr<i8>, i64) -> ()
    %114 = llvm.call @omTensorGetShape(%107) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %115 = llvm.call @omTensorGetStrides(%107) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %116 = llvm.mlir.constant(0 : i64) : i64
    %117 = llvm.extractvalue %47[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %118 = llvm.getelementptr %114[%116] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %117, %118 : !llvm.ptr<i64>
    %119 = llvm.extractvalue %47[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %120 = llvm.getelementptr %115[%116] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %119, %120 : !llvm.ptr<i64>
    %121 = llvm.mlir.constant(1 : i64) : i64
    %122 = llvm.extractvalue %47[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %123 = llvm.getelementptr %114[%121] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %122, %123 : !llvm.ptr<i64>
    %124 = llvm.extractvalue %47[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %125 = llvm.getelementptr %115[%121] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %124, %125 : !llvm.ptr<i64>
    %126 = llvm.mlir.constant(2 : i64) : i64
    %127 = llvm.extractvalue %47[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %128 = llvm.getelementptr %114[%126] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %127, %128 : !llvm.ptr<i64>
    %129 = llvm.extractvalue %47[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %130 = llvm.getelementptr %115[%126] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %129, %130 : !llvm.ptr<i64>
    %131 = llvm.mlir.constant(3 : i64) : i64
    %132 = llvm.extractvalue %47[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %133 = llvm.getelementptr %114[%131] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %132, %133 : !llvm.ptr<i64>
    %134 = llvm.extractvalue %47[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %135 = llvm.getelementptr %115[%131] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %134, %135 : !llvm.ptr<i64>
    %136 = llvm.mlir.constant(2 : i64) : i64
    %137 = llvm.getelementptr %51[%136] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %107, %137 : !llvm.ptr<ptr<i8>>
    %138 = llvm.call @omTensorListCreate(%51, %48, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %138 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<203 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<203 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

