module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v0_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v4_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1] , \22name\22 : \22v5_0\22 }\0A ,    { \22type\22 : \22i1\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v2_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.mlir.global internal constant @constant_4(dense<1> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.mlir.global internal constant @constant_3(dense<-1> : tensor<i64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i64>
  llvm.mlir.global internal constant @constant_2(dense<1> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> attributes {input_names = ["v0_0"], llvm.emit_c_interface, output_names = ["v4_0", "v5_0", "v2_0"]} {
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
    %12 = llvm.mlir.constant(3 : index) : i64
    %13 = llvm.mlir.constant(2 : index) : i64
    %14 = llvm.mlir.constant(1 : index) : i64
    %15 = llvm.mlir.constant(0 : index) : i64
    %16 = llvm.mlir.constant(1 : i64) : i64
    %17 = llvm.mlir.addressof @constant_2 : !llvm.ptr<array<4 x i64>>
    %18 = llvm.bitcast %17 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %19 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %20 = llvm.insertvalue %18, %19[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %21 = llvm.insertvalue %18, %20[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %22 = llvm.mlir.constant(0 : index) : i64
    %23 = llvm.insertvalue %22, %21[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %24 = llvm.mlir.constant(4 : index) : i64
    %25 = llvm.insertvalue %24, %23[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %26 = llvm.mlir.constant(1 : index) : i64
    %27 = llvm.insertvalue %26, %25[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %28 = llvm.mlir.addressof @constant_3 : !llvm.ptr<array<1 x i64>>
    %29 = llvm.bitcast %28 : !llvm.ptr<array<1 x i64>> to !llvm.ptr<i64>
    %30 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64)>
    %31 = llvm.insertvalue %29, %30[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %32 = llvm.insertvalue %29, %31[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %33 = llvm.mlir.constant(0 : index) : i64
    %34 = llvm.insertvalue %33, %32[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %35 = llvm.mlir.addressof @constant_4 : !llvm.ptr<array<4 x i64>>
    %36 = llvm.bitcast %35 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %37 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %38 = llvm.insertvalue %36, %37[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %39 = llvm.insertvalue %36, %38[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %40 = llvm.mlir.constant(0 : index) : i64
    %41 = llvm.insertvalue %40, %39[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %42 = llvm.mlir.constant(4 : index) : i64
    %43 = llvm.insertvalue %42, %41[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %44 = llvm.mlir.constant(1 : index) : i64
    %45 = llvm.insertvalue %44, %43[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %46 = llvm.mlir.addressof @constant_5 : !llvm.ptr<array<4 x i64>>
    %47 = llvm.bitcast %46 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %48 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %49 = llvm.insertvalue %47, %48[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %50 = llvm.insertvalue %47, %49[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %51 = llvm.mlir.constant(0 : index) : i64
    %52 = llvm.insertvalue %51, %50[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %53 = llvm.mlir.constant(4 : index) : i64
    %54 = llvm.insertvalue %53, %52[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %55 = llvm.mlir.constant(1 : index) : i64
    %56 = llvm.insertvalue %55, %54[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %57 = llvm.mlir.addressof @constant_6 : !llvm.ptr<array<1 x i64>>
    %58 = llvm.bitcast %57 : !llvm.ptr<array<1 x i64>> to !llvm.ptr<i64>
    %59 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64)>
    %60 = llvm.insertvalue %58, %59[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %61 = llvm.insertvalue %58, %60[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %62 = llvm.mlir.constant(0 : index) : i64
    %63 = llvm.insertvalue %62, %61[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %64 = llvm.mlir.addressof @constant_7 : !llvm.ptr<array<4 x i64>>
    %65 = llvm.bitcast %64 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %66 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %67 = llvm.insertvalue %65, %66[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %68 = llvm.insertvalue %65, %67[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %69 = llvm.mlir.constant(0 : index) : i64
    %70 = llvm.insertvalue %69, %68[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %71 = llvm.mlir.constant(4 : index) : i64
    %72 = llvm.insertvalue %71, %70[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %73 = llvm.mlir.constant(1 : index) : i64
    %74 = llvm.insertvalue %73, %72[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %75 = llvm.mlir.constant(4 : index) : i64
    %76 = llvm.mlir.constant(1 : index) : i64
    %77 = llvm.mlir.null : !llvm.ptr<i64>
    %78 = llvm.getelementptr %77[%75] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %79 = llvm.ptrtoint %78 : !llvm.ptr<i64> to i64
    %80 = llvm.mlir.constant(16 : index) : i64
    %81 = llvm.add %79, %80  : i64
    %82 = llvm.call @malloc(%81) : (i64) -> !llvm.ptr<i8>
    %83 = llvm.bitcast %82 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %84 = llvm.ptrtoint %83 : !llvm.ptr<i64> to i64
    %85 = llvm.mlir.constant(1 : index) : i64
    %86 = llvm.sub %80, %85  : i64
    %87 = llvm.add %84, %86  : i64
    %88 = llvm.urem %87, %80  : i64
    %89 = llvm.sub %87, %88  : i64
    %90 = llvm.inttoptr %89 : i64 to !llvm.ptr<i64>
    %91 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %92 = llvm.insertvalue %83, %91[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %93 = llvm.insertvalue %90, %92[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %94 = llvm.mlir.constant(0 : index) : i64
    %95 = llvm.insertvalue %94, %93[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %96 = llvm.insertvalue %75, %95[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %97 = llvm.insertvalue %76, %96[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %98 = llvm.mlir.constant(0 : index) : i64
    %99 = llvm.mlir.constant(4 : index) : i64
    %100 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%98 : i64)
  ^bb1(%101: i64):  // 2 preds: ^bb0, ^bb2
    %102 = llvm.icmp "slt" %101, %99 : i64
    llvm.cond_br %102, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    %103 = llvm.extractvalue %97[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %104 = llvm.getelementptr %103[%101] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %16, %104 : !llvm.ptr<i64>
    %105 = llvm.add %101, %100  : i64
    llvm.br ^bb1(%105 : i64)
  ^bb3:  // pred: ^bb1
    %106 = llvm.mlir.constant(4 : index) : i64
    %107 = llvm.mlir.constant(1 : index) : i64
    %108 = llvm.mlir.null : !llvm.ptr<i64>
    %109 = llvm.getelementptr %108[%106] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %110 = llvm.ptrtoint %109 : !llvm.ptr<i64> to i64
    %111 = llvm.mlir.constant(16 : index) : i64
    %112 = llvm.add %110, %111  : i64
    %113 = llvm.call @malloc(%112) : (i64) -> !llvm.ptr<i8>
    %114 = llvm.bitcast %113 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %115 = llvm.ptrtoint %114 : !llvm.ptr<i64> to i64
    %116 = llvm.mlir.constant(1 : index) : i64
    %117 = llvm.sub %111, %116  : i64
    %118 = llvm.add %115, %117  : i64
    %119 = llvm.urem %118, %111  : i64
    %120 = llvm.sub %118, %119  : i64
    %121 = llvm.inttoptr %120 : i64 to !llvm.ptr<i64>
    %122 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %123 = llvm.insertvalue %114, %122[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %124 = llvm.insertvalue %121, %123[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %125 = llvm.mlir.constant(0 : index) : i64
    %126 = llvm.insertvalue %125, %124[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %127 = llvm.insertvalue %106, %126[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %128 = llvm.insertvalue %107, %127[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %129 = llvm.mlir.constant(0 : index) : i64
    %130 = llvm.mlir.constant(4 : index) : i64
    %131 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb4(%129 : i64)
  ^bb4(%132: i64):  // 2 preds: ^bb3, ^bb5
    %133 = llvm.icmp "slt" %132, %130 : i64
    llvm.cond_br %133, ^bb5, ^bb6
  ^bb5:  // pred: ^bb4
    %134 = llvm.extractvalue %97[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %135 = llvm.getelementptr %134[%132] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %136 = llvm.load %135 : !llvm.ptr<i64>
    %137 = llvm.extractvalue %63[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %138 = llvm.load %137 : !llvm.ptr<i64>
    %139 = llvm.mul %136, %138  : i64
    %140 = llvm.extractvalue %128[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %141 = llvm.getelementptr %140[%132] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %139, %141 : !llvm.ptr<i64>
    %142 = llvm.add %132, %131  : i64
    llvm.br ^bb4(%142 : i64)
  ^bb6:  // pred: ^bb4
    %143 = llvm.mlir.constant(4 : index) : i64
    %144 = llvm.mlir.constant(1 : index) : i64
    %145 = llvm.mlir.null : !llvm.ptr<i1>
    %146 = llvm.getelementptr %145[%143] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %147 = llvm.ptrtoint %146 : !llvm.ptr<i1> to i64
    %148 = llvm.mlir.constant(16 : index) : i64
    %149 = llvm.add %147, %148  : i64
    %150 = llvm.call @malloc(%149) : (i64) -> !llvm.ptr<i8>
    %151 = llvm.bitcast %150 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %152 = llvm.ptrtoint %151 : !llvm.ptr<i1> to i64
    %153 = llvm.mlir.constant(1 : index) : i64
    %154 = llvm.sub %148, %153  : i64
    %155 = llvm.add %152, %154  : i64
    %156 = llvm.urem %155, %148  : i64
    %157 = llvm.sub %155, %156  : i64
    %158 = llvm.inttoptr %157 : i64 to !llvm.ptr<i1>
    %159 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %160 = llvm.insertvalue %151, %159[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %161 = llvm.insertvalue %158, %160[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %162 = llvm.mlir.constant(0 : index) : i64
    %163 = llvm.insertvalue %162, %161[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %164 = llvm.insertvalue %143, %163[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %165 = llvm.insertvalue %144, %164[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %166 = llvm.mlir.constant(0 : index) : i64
    %167 = llvm.mlir.constant(4 : index) : i64
    %168 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%166 : i64)
  ^bb7(%169: i64):  // 2 preds: ^bb6, ^bb8
    %170 = llvm.icmp "slt" %169, %167 : i64
    llvm.cond_br %170, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %171 = llvm.extractvalue %56[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %172 = llvm.getelementptr %171[%169] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %173 = llvm.load %172 : !llvm.ptr<i64>
    %174 = llvm.extractvalue %128[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %175 = llvm.getelementptr %174[%169] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %176 = llvm.load %175 : !llvm.ptr<i64>
    %177 = llvm.icmp "eq" %173, %176 : i64
    %178 = llvm.extractvalue %165[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %179 = llvm.getelementptr %178[%169] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %177, %179 : !llvm.ptr<i1>
    %180 = llvm.add %169, %168  : i64
    llvm.br ^bb7(%180 : i64)
  ^bb9:  // pred: ^bb7
    %181 = llvm.mlir.constant(4 : index) : i64
    %182 = llvm.mlir.constant(1 : index) : i64
    %183 = llvm.mlir.null : !llvm.ptr<i64>
    %184 = llvm.getelementptr %183[%181] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %185 = llvm.ptrtoint %184 : !llvm.ptr<i64> to i64
    %186 = llvm.mlir.constant(16 : index) : i64
    %187 = llvm.add %185, %186  : i64
    %188 = llvm.call @malloc(%187) : (i64) -> !llvm.ptr<i8>
    %189 = llvm.bitcast %188 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %190 = llvm.ptrtoint %189 : !llvm.ptr<i64> to i64
    %191 = llvm.mlir.constant(1 : index) : i64
    %192 = llvm.sub %186, %191  : i64
    %193 = llvm.add %190, %192  : i64
    %194 = llvm.urem %193, %186  : i64
    %195 = llvm.sub %193, %194  : i64
    %196 = llvm.inttoptr %195 : i64 to !llvm.ptr<i64>
    %197 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %198 = llvm.insertvalue %189, %197[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %199 = llvm.insertvalue %196, %198[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %200 = llvm.mlir.constant(0 : index) : i64
    %201 = llvm.insertvalue %200, %199[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %202 = llvm.insertvalue %181, %201[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %203 = llvm.insertvalue %182, %202[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %204 = llvm.mlir.constant(0 : index) : i64
    %205 = llvm.mlir.constant(4 : index) : i64
    %206 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb10(%204 : i64)
  ^bb10(%207: i64):  // 2 preds: ^bb9, ^bb11
    %208 = llvm.icmp "slt" %207, %205 : i64
    llvm.cond_br %208, ^bb11, ^bb12
  ^bb11:  // pred: ^bb10
    %209 = llvm.extractvalue %165[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %210 = llvm.getelementptr %209[%207] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %211 = llvm.load %210 : !llvm.ptr<i1>
    %212 = llvm.extractvalue %97[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %213 = llvm.getelementptr %212[%207] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %214 = llvm.load %213 : !llvm.ptr<i64>
    %215 = llvm.extractvalue %74[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %216 = llvm.getelementptr %215[%207] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %217 = llvm.load %216 : !llvm.ptr<i64>
    %218 = llvm.select %211, %214, %217 : i1, i64
    %219 = llvm.extractvalue %203[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %220 = llvm.getelementptr %219[%207] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %218, %220 : !llvm.ptr<i64>
    %221 = llvm.add %207, %206  : i64
    llvm.br ^bb10(%221 : i64)
  ^bb12:  // pred: ^bb10
    %222 = llvm.extractvalue %203[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %223 = llvm.getelementptr %222[%15] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %224 = llvm.load %223 : !llvm.ptr<i64>
    %225 = llvm.extractvalue %203[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %226 = llvm.getelementptr %225[%14] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %227 = llvm.load %226 : !llvm.ptr<i64>
    %228 = llvm.extractvalue %203[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %229 = llvm.getelementptr %228[%13] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %230 = llvm.load %229 : !llvm.ptr<i64>
    %231 = llvm.extractvalue %203[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %232 = llvm.getelementptr %231[%12] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %233 = llvm.load %232 : !llvm.ptr<i64>
    %234 = llvm.mlir.constant(1 : index) : i64
    %235 = llvm.mul %233, %230  : i64
    %236 = llvm.mul %235, %227  : i64
    %237 = llvm.mul %236, %224  : i64
    %238 = llvm.mlir.null : !llvm.ptr<i32>
    %239 = llvm.getelementptr %238[%237] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %240 = llvm.ptrtoint %239 : !llvm.ptr<i32> to i64
    %241 = llvm.mlir.constant(16 : index) : i64
    %242 = llvm.add %240, %241  : i64
    %243 = llvm.call @malloc(%242) : (i64) -> !llvm.ptr<i8>
    %244 = llvm.bitcast %243 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %245 = llvm.ptrtoint %244 : !llvm.ptr<i32> to i64
    %246 = llvm.mlir.constant(1 : index) : i64
    %247 = llvm.sub %241, %246  : i64
    %248 = llvm.add %245, %247  : i64
    %249 = llvm.urem %248, %241  : i64
    %250 = llvm.sub %248, %249  : i64
    %251 = llvm.inttoptr %250 : i64 to !llvm.ptr<i32>
    %252 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %253 = llvm.insertvalue %244, %252[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %254 = llvm.insertvalue %251, %253[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %255 = llvm.mlir.constant(0 : index) : i64
    %256 = llvm.insertvalue %255, %254[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %257 = llvm.insertvalue %224, %256[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %258 = llvm.insertvalue %227, %257[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %259 = llvm.insertvalue %230, %258[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %260 = llvm.insertvalue %233, %259[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %261 = llvm.insertvalue %236, %260[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %262 = llvm.insertvalue %235, %261[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %263 = llvm.insertvalue %233, %262[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %264 = llvm.insertvalue %234, %263[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %265 = llvm.mlir.constant(0 : index) : i64
    %266 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%265 : i64)
  ^bb13(%267: i64):  // 2 preds: ^bb12, ^bb23
    %268 = llvm.icmp "slt" %267, %224 : i64
    llvm.cond_br %268, ^bb14, ^bb24
  ^bb14:  // pred: ^bb13
    %269 = llvm.mlir.constant(0 : index) : i64
    %270 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb15(%269 : i64)
  ^bb15(%271: i64):  // 2 preds: ^bb14, ^bb22
    %272 = llvm.icmp "slt" %271, %227 : i64
    llvm.cond_br %272, ^bb16, ^bb23
  ^bb16:  // pred: ^bb15
    %273 = llvm.mlir.constant(0 : index) : i64
    %274 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb17(%273 : i64)
  ^bb17(%275: i64):  // 2 preds: ^bb16, ^bb21
    %276 = llvm.icmp "slt" %275, %230 : i64
    llvm.cond_br %276, ^bb18, ^bb22
  ^bb18:  // pred: ^bb17
    %277 = llvm.mlir.constant(0 : index) : i64
    %278 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%277 : i64)
  ^bb19(%279: i64):  // 2 preds: ^bb18, ^bb20
    %280 = llvm.icmp "slt" %279, %233 : i64
    llvm.cond_br %280, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %281 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %282 = llvm.add %15, %15  : i64
    %283 = llvm.add %282, %15  : i64
    %284 = llvm.add %283, %15  : i64
    %285 = llvm.getelementptr %281[%284] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %286 = llvm.load %285 : !llvm.ptr<i32>
    %287 = llvm.extractvalue %264[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %288 = llvm.extractvalue %264[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %289 = llvm.mul %267, %288  : i64
    %290 = llvm.extractvalue %264[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %291 = llvm.mul %271, %290  : i64
    %292 = llvm.add %289, %291  : i64
    %293 = llvm.extractvalue %264[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %294 = llvm.mul %275, %293  : i64
    %295 = llvm.add %292, %294  : i64
    %296 = llvm.add %295, %279  : i64
    %297 = llvm.getelementptr %287[%296] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %286, %297 : !llvm.ptr<i32>
    %298 = llvm.add %279, %278  : i64
    llvm.br ^bb19(%298 : i64)
  ^bb21:  // pred: ^bb19
    %299 = llvm.add %275, %274  : i64
    llvm.br ^bb17(%299 : i64)
  ^bb22:  // pred: ^bb17
    %300 = llvm.add %271, %270  : i64
    llvm.br ^bb15(%300 : i64)
  ^bb23:  // pred: ^bb15
    %301 = llvm.add %267, %266  : i64
    llvm.br ^bb13(%301 : i64)
  ^bb24:  // pred: ^bb13
    %302 = llvm.mlir.constant(4 : index) : i64
    %303 = llvm.mlir.constant(1 : index) : i64
    %304 = llvm.mlir.null : !llvm.ptr<i64>
    %305 = llvm.getelementptr %304[%302] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %306 = llvm.ptrtoint %305 : !llvm.ptr<i64> to i64
    %307 = llvm.mlir.constant(16 : index) : i64
    %308 = llvm.add %306, %307  : i64
    %309 = llvm.call @malloc(%308) : (i64) -> !llvm.ptr<i8>
    %310 = llvm.bitcast %309 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %311 = llvm.ptrtoint %310 : !llvm.ptr<i64> to i64
    %312 = llvm.mlir.constant(1 : index) : i64
    %313 = llvm.sub %307, %312  : i64
    %314 = llvm.add %311, %313  : i64
    %315 = llvm.urem %314, %307  : i64
    %316 = llvm.sub %314, %315  : i64
    %317 = llvm.inttoptr %316 : i64 to !llvm.ptr<i64>
    %318 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %319 = llvm.insertvalue %310, %318[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %320 = llvm.insertvalue %317, %319[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %321 = llvm.mlir.constant(0 : index) : i64
    %322 = llvm.insertvalue %321, %320[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %323 = llvm.insertvalue %302, %322[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %324 = llvm.insertvalue %303, %323[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %325 = llvm.mlir.constant(0 : index) : i64
    %326 = llvm.mlir.constant(4 : index) : i64
    %327 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb25(%325 : i64)
  ^bb25(%328: i64):  // 2 preds: ^bb24, ^bb26
    %329 = llvm.icmp "slt" %328, %326 : i64
    llvm.cond_br %329, ^bb26, ^bb27
  ^bb26:  // pred: ^bb25
    %330 = llvm.extractvalue %324[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %331 = llvm.getelementptr %330[%328] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %16, %331 : !llvm.ptr<i64>
    %332 = llvm.add %328, %327  : i64
    llvm.br ^bb25(%332 : i64)
  ^bb27:  // pred: ^bb25
    %333 = llvm.mlir.constant(4 : index) : i64
    %334 = llvm.mlir.constant(1 : index) : i64
    %335 = llvm.mlir.null : !llvm.ptr<i64>
    %336 = llvm.getelementptr %335[%333] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %337 = llvm.ptrtoint %336 : !llvm.ptr<i64> to i64
    %338 = llvm.mlir.constant(16 : index) : i64
    %339 = llvm.add %337, %338  : i64
    %340 = llvm.call @malloc(%339) : (i64) -> !llvm.ptr<i8>
    %341 = llvm.bitcast %340 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %342 = llvm.ptrtoint %341 : !llvm.ptr<i64> to i64
    %343 = llvm.mlir.constant(1 : index) : i64
    %344 = llvm.sub %338, %343  : i64
    %345 = llvm.add %342, %344  : i64
    %346 = llvm.urem %345, %338  : i64
    %347 = llvm.sub %345, %346  : i64
    %348 = llvm.inttoptr %347 : i64 to !llvm.ptr<i64>
    %349 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %350 = llvm.insertvalue %341, %349[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %351 = llvm.insertvalue %348, %350[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %352 = llvm.mlir.constant(0 : index) : i64
    %353 = llvm.insertvalue %352, %351[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %354 = llvm.insertvalue %333, %353[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %355 = llvm.insertvalue %334, %354[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %356 = llvm.mlir.constant(0 : index) : i64
    %357 = llvm.mlir.constant(4 : index) : i64
    %358 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb28(%356 : i64)
  ^bb28(%359: i64):  // 2 preds: ^bb27, ^bb29
    %360 = llvm.icmp "slt" %359, %357 : i64
    llvm.cond_br %360, ^bb29, ^bb30
  ^bb29:  // pred: ^bb28
    %361 = llvm.extractvalue %324[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %362 = llvm.getelementptr %361[%359] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %363 = llvm.load %362 : !llvm.ptr<i64>
    %364 = llvm.extractvalue %34[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %365 = llvm.load %364 : !llvm.ptr<i64>
    %366 = llvm.mul %363, %365  : i64
    %367 = llvm.extractvalue %355[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %368 = llvm.getelementptr %367[%359] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %366, %368 : !llvm.ptr<i64>
    %369 = llvm.add %359, %358  : i64
    llvm.br ^bb28(%369 : i64)
  ^bb30:  // pred: ^bb28
    %370 = llvm.mlir.constant(4 : index) : i64
    %371 = llvm.mlir.constant(1 : index) : i64
    %372 = llvm.mlir.null : !llvm.ptr<i1>
    %373 = llvm.getelementptr %372[%370] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %374 = llvm.ptrtoint %373 : !llvm.ptr<i1> to i64
    %375 = llvm.mlir.constant(16 : index) : i64
    %376 = llvm.add %374, %375  : i64
    %377 = llvm.call @malloc(%376) : (i64) -> !llvm.ptr<i8>
    %378 = llvm.bitcast %377 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %379 = llvm.ptrtoint %378 : !llvm.ptr<i1> to i64
    %380 = llvm.mlir.constant(1 : index) : i64
    %381 = llvm.sub %375, %380  : i64
    %382 = llvm.add %379, %381  : i64
    %383 = llvm.urem %382, %375  : i64
    %384 = llvm.sub %382, %383  : i64
    %385 = llvm.inttoptr %384 : i64 to !llvm.ptr<i1>
    %386 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %387 = llvm.insertvalue %378, %386[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %388 = llvm.insertvalue %385, %387[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %389 = llvm.mlir.constant(0 : index) : i64
    %390 = llvm.insertvalue %389, %388[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %391 = llvm.insertvalue %370, %390[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %392 = llvm.insertvalue %371, %391[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %393 = llvm.mlir.constant(0 : index) : i64
    %394 = llvm.mlir.constant(4 : index) : i64
    %395 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb31(%393 : i64)
  ^bb31(%396: i64):  // 2 preds: ^bb30, ^bb32
    %397 = llvm.icmp "slt" %396, %394 : i64
    llvm.cond_br %397, ^bb32, ^bb33
  ^bb32:  // pred: ^bb31
    %398 = llvm.extractvalue %27[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %399 = llvm.getelementptr %398[%396] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %400 = llvm.load %399 : !llvm.ptr<i64>
    %401 = llvm.extractvalue %355[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %402 = llvm.getelementptr %401[%396] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %403 = llvm.load %402 : !llvm.ptr<i64>
    %404 = llvm.icmp "eq" %400, %403 : i64
    %405 = llvm.extractvalue %392[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %406 = llvm.getelementptr %405[%396] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %404, %406 : !llvm.ptr<i1>
    %407 = llvm.add %396, %395  : i64
    llvm.br ^bb31(%407 : i64)
  ^bb33:  // pred: ^bb31
    %408 = llvm.mlir.constant(4 : index) : i64
    %409 = llvm.mlir.constant(1 : index) : i64
    %410 = llvm.mlir.null : !llvm.ptr<i64>
    %411 = llvm.getelementptr %410[%408] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %412 = llvm.ptrtoint %411 : !llvm.ptr<i64> to i64
    %413 = llvm.mlir.constant(16 : index) : i64
    %414 = llvm.add %412, %413  : i64
    %415 = llvm.call @malloc(%414) : (i64) -> !llvm.ptr<i8>
    %416 = llvm.bitcast %415 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %417 = llvm.ptrtoint %416 : !llvm.ptr<i64> to i64
    %418 = llvm.mlir.constant(1 : index) : i64
    %419 = llvm.sub %413, %418  : i64
    %420 = llvm.add %417, %419  : i64
    %421 = llvm.urem %420, %413  : i64
    %422 = llvm.sub %420, %421  : i64
    %423 = llvm.inttoptr %422 : i64 to !llvm.ptr<i64>
    %424 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %425 = llvm.insertvalue %416, %424[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %426 = llvm.insertvalue %423, %425[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %427 = llvm.mlir.constant(0 : index) : i64
    %428 = llvm.insertvalue %427, %426[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %429 = llvm.insertvalue %408, %428[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %430 = llvm.insertvalue %409, %429[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %431 = llvm.mlir.constant(0 : index) : i64
    %432 = llvm.mlir.constant(4 : index) : i64
    %433 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb34(%431 : i64)
  ^bb34(%434: i64):  // 2 preds: ^bb33, ^bb35
    %435 = llvm.icmp "slt" %434, %432 : i64
    llvm.cond_br %435, ^bb35, ^bb36
  ^bb35:  // pred: ^bb34
    %436 = llvm.extractvalue %392[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %437 = llvm.getelementptr %436[%434] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %438 = llvm.load %437 : !llvm.ptr<i1>
    %439 = llvm.extractvalue %324[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %440 = llvm.getelementptr %439[%434] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %441 = llvm.load %440 : !llvm.ptr<i64>
    %442 = llvm.extractvalue %45[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %443 = llvm.getelementptr %442[%434] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %444 = llvm.load %443 : !llvm.ptr<i64>
    %445 = llvm.select %438, %441, %444 : i1, i64
    %446 = llvm.extractvalue %430[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %447 = llvm.getelementptr %446[%434] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %445, %447 : !llvm.ptr<i64>
    %448 = llvm.add %434, %433  : i64
    llvm.br ^bb34(%448 : i64)
  ^bb36:  // pred: ^bb34
    %449 = llvm.mlir.constant(1 : index) : i64
    %450 = llvm.mlir.constant(1 : index) : i64
    %451 = llvm.mlir.constant(1 : index) : i64
    %452 = llvm.mlir.constant(1 : index) : i64
    %453 = llvm.mlir.constant(1 : index) : i64
    %454 = llvm.mlir.null : !llvm.ptr<i32>
    %455 = llvm.getelementptr %454[%449] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %456 = llvm.ptrtoint %455 : !llvm.ptr<i32> to i64
    %457 = llvm.mlir.constant(16 : index) : i64
    %458 = llvm.add %456, %457  : i64
    %459 = llvm.call @malloc(%458) : (i64) -> !llvm.ptr<i8>
    %460 = llvm.bitcast %459 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %461 = llvm.ptrtoint %460 : !llvm.ptr<i32> to i64
    %462 = llvm.mlir.constant(1 : index) : i64
    %463 = llvm.sub %457, %462  : i64
    %464 = llvm.add %461, %463  : i64
    %465 = llvm.urem %464, %457  : i64
    %466 = llvm.sub %464, %465  : i64
    %467 = llvm.inttoptr %466 : i64 to !llvm.ptr<i32>
    %468 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %469 = llvm.insertvalue %460, %468[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %470 = llvm.insertvalue %467, %469[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %471 = llvm.mlir.constant(0 : index) : i64
    %472 = llvm.insertvalue %471, %470[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %473 = llvm.insertvalue %449, %472[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %474 = llvm.insertvalue %450, %473[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %475 = llvm.insertvalue %451, %474[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %476 = llvm.insertvalue %452, %475[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %477 = llvm.insertvalue %450, %476[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %478 = llvm.insertvalue %451, %477[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %479 = llvm.insertvalue %452, %478[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %480 = llvm.insertvalue %453, %479[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %481 = llvm.icmp "sgt" %224, %14 : i64
    %482 = llvm.icmp "sgt" %227, %14 : i64
    %483 = llvm.icmp "sgt" %230, %14 : i64
    %484 = llvm.icmp "sgt" %233, %14 : i64
    %485 = llvm.mlir.constant(0 : index) : i64
    %486 = llvm.mlir.constant(1 : index) : i64
    %487 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb37(%485 : i64)
  ^bb37(%488: i64):  // 2 preds: ^bb36, ^bb47
    %489 = llvm.icmp "slt" %488, %486 : i64
    llvm.cond_br %489, ^bb38, ^bb48
  ^bb38:  // pred: ^bb37
    %490 = llvm.mlir.constant(0 : index) : i64
    %491 = llvm.mlir.constant(1 : index) : i64
    %492 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb39(%490 : i64)
  ^bb39(%493: i64):  // 2 preds: ^bb38, ^bb46
    %494 = llvm.icmp "slt" %493, %491 : i64
    llvm.cond_br %494, ^bb40, ^bb47
  ^bb40:  // pred: ^bb39
    %495 = llvm.mlir.constant(0 : index) : i64
    %496 = llvm.mlir.constant(1 : index) : i64
    %497 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb41(%495 : i64)
  ^bb41(%498: i64):  // 2 preds: ^bb40, ^bb45
    %499 = llvm.icmp "slt" %498, %496 : i64
    llvm.cond_br %499, ^bb42, ^bb46
  ^bb42:  // pred: ^bb41
    %500 = llvm.mlir.constant(0 : index) : i64
    %501 = llvm.mlir.constant(1 : index) : i64
    %502 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb43(%500 : i64)
  ^bb43(%503: i64):  // 2 preds: ^bb42, ^bb44
    %504 = llvm.icmp "slt" %503, %501 : i64
    llvm.cond_br %504, ^bb44, ^bb45
  ^bb44:  // pred: ^bb43
    %505 = llvm.select %481, %488, %15 : i1, i64
    %506 = llvm.select %482, %493, %15 : i1, i64
    %507 = llvm.select %483, %498, %15 : i1, i64
    %508 = llvm.select %484, %503, %15 : i1, i64
    %509 = llvm.extractvalue %264[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %510 = llvm.extractvalue %264[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %511 = llvm.mul %505, %510  : i64
    %512 = llvm.extractvalue %264[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %513 = llvm.mul %506, %512  : i64
    %514 = llvm.add %511, %513  : i64
    %515 = llvm.extractvalue %264[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %516 = llvm.mul %507, %515  : i64
    %517 = llvm.add %514, %516  : i64
    %518 = llvm.add %517, %508  : i64
    %519 = llvm.getelementptr %509[%518] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %520 = llvm.load %519 : !llvm.ptr<i32>
    %521 = llvm.extractvalue %480[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %522 = llvm.add %488, %493  : i64
    %523 = llvm.add %522, %498  : i64
    %524 = llvm.add %523, %503  : i64
    %525 = llvm.getelementptr %521[%524] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %520, %525 : !llvm.ptr<i32>
    %526 = llvm.add %503, %502  : i64
    llvm.br ^bb43(%526 : i64)
  ^bb45:  // pred: ^bb43
    %527 = llvm.add %498, %497  : i64
    llvm.br ^bb41(%527 : i64)
  ^bb46:  // pred: ^bb41
    %528 = llvm.add %493, %492  : i64
    llvm.br ^bb39(%528 : i64)
  ^bb47:  // pred: ^bb39
    %529 = llvm.add %488, %487  : i64
    llvm.br ^bb37(%529 : i64)
  ^bb48:  // pred: ^bb37
    %530 = llvm.mlir.constant(1 : index) : i64
    %531 = llvm.mlir.constant(1 : index) : i64
    %532 = llvm.mlir.constant(1 : index) : i64
    %533 = llvm.mlir.constant(1 : index) : i64
    %534 = llvm.mlir.constant(1 : index) : i64
    %535 = llvm.mlir.null : !llvm.ptr<i32>
    %536 = llvm.getelementptr %535[%530] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %537 = llvm.ptrtoint %536 : !llvm.ptr<i32> to i64
    %538 = llvm.mlir.constant(16 : index) : i64
    %539 = llvm.add %537, %538  : i64
    %540 = llvm.call @malloc(%539) : (i64) -> !llvm.ptr<i8>
    %541 = llvm.bitcast %540 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %542 = llvm.ptrtoint %541 : !llvm.ptr<i32> to i64
    %543 = llvm.mlir.constant(1 : index) : i64
    %544 = llvm.sub %538, %543  : i64
    %545 = llvm.add %542, %544  : i64
    %546 = llvm.urem %545, %538  : i64
    %547 = llvm.sub %545, %546  : i64
    %548 = llvm.inttoptr %547 : i64 to !llvm.ptr<i32>
    %549 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %550 = llvm.insertvalue %541, %549[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %551 = llvm.insertvalue %548, %550[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %552 = llvm.mlir.constant(0 : index) : i64
    %553 = llvm.insertvalue %552, %551[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %554 = llvm.insertvalue %530, %553[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %555 = llvm.insertvalue %531, %554[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %556 = llvm.insertvalue %532, %555[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %557 = llvm.insertvalue %533, %556[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %558 = llvm.insertvalue %531, %557[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %559 = llvm.insertvalue %532, %558[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %560 = llvm.insertvalue %533, %559[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %561 = llvm.insertvalue %534, %560[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %562 = llvm.mlir.constant(0 : index) : i64
    %563 = llvm.mlir.constant(1 : index) : i64
    %564 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb49(%562 : i64)
  ^bb49(%565: i64):  // 2 preds: ^bb48, ^bb59
    %566 = llvm.icmp "slt" %565, %563 : i64
    llvm.cond_br %566, ^bb50, ^bb60
  ^bb50:  // pred: ^bb49
    %567 = llvm.mlir.constant(0 : index) : i64
    %568 = llvm.mlir.constant(1 : index) : i64
    %569 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb51(%567 : i64)
  ^bb51(%570: i64):  // 2 preds: ^bb50, ^bb58
    %571 = llvm.icmp "slt" %570, %568 : i64
    llvm.cond_br %571, ^bb52, ^bb59
  ^bb52:  // pred: ^bb51
    %572 = llvm.mlir.constant(0 : index) : i64
    %573 = llvm.mlir.constant(1 : index) : i64
    %574 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb53(%572 : i64)
  ^bb53(%575: i64):  // 2 preds: ^bb52, ^bb57
    %576 = llvm.icmp "slt" %575, %573 : i64
    llvm.cond_br %576, ^bb54, ^bb58
  ^bb54:  // pred: ^bb53
    %577 = llvm.mlir.constant(0 : index) : i64
    %578 = llvm.mlir.constant(1 : index) : i64
    %579 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb55(%577 : i64)
  ^bb55(%580: i64):  // 2 preds: ^bb54, ^bb56
    %581 = llvm.icmp "slt" %580, %578 : i64
    llvm.cond_br %581, ^bb56, ^bb57
  ^bb56:  // pred: ^bb55
    %582 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %583 = llvm.add %565, %570  : i64
    %584 = llvm.add %583, %575  : i64
    %585 = llvm.add %584, %580  : i64
    %586 = llvm.getelementptr %582[%585] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %587 = llvm.load %586 : !llvm.ptr<i32>
    %588 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %589 = llvm.add %565, %570  : i64
    %590 = llvm.add %589, %575  : i64
    %591 = llvm.add %590, %580  : i64
    %592 = llvm.getelementptr %588[%591] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %593 = llvm.load %592 : !llvm.ptr<i32>
    %594 = llvm.add %587, %593  : i32
    %595 = llvm.extractvalue %561[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %596 = llvm.add %565, %570  : i64
    %597 = llvm.add %596, %575  : i64
    %598 = llvm.add %597, %580  : i64
    %599 = llvm.getelementptr %595[%598] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %594, %599 : !llvm.ptr<i32>
    %600 = llvm.add %580, %579  : i64
    llvm.br ^bb55(%600 : i64)
  ^bb57:  // pred: ^bb55
    %601 = llvm.add %575, %574  : i64
    llvm.br ^bb53(%601 : i64)
  ^bb58:  // pred: ^bb53
    %602 = llvm.add %570, %569  : i64
    llvm.br ^bb51(%602 : i64)
  ^bb59:  // pred: ^bb51
    %603 = llvm.add %565, %564  : i64
    llvm.br ^bb49(%603 : i64)
  ^bb60:  // pred: ^bb49
    %604 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>
    %605 = llvm.extractvalue %561[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %606 = llvm.extractvalue %561[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %607 = llvm.insertvalue %605, %604[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %608 = llvm.insertvalue %606, %607[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %609 = llvm.mlir.constant(0 : index) : i64
    %610 = llvm.insertvalue %609, %608[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %611 = llvm.mlir.constant(1 : index) : i64
    %612 = llvm.insertvalue %611, %610[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %613 = llvm.mlir.constant(1 : index) : i64
    %614 = llvm.insertvalue %613, %612[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %615 = llvm.mlir.constant(1 : index) : i64
    %616 = llvm.insertvalue %615, %614[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %617 = llvm.mlir.constant(1 : index) : i64
    %618 = llvm.insertvalue %617, %616[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %619 = llvm.mlir.constant(1 : index) : i64
    %620 = llvm.mlir.constant(1 : index) : i64
    %621 = llvm.mlir.constant(1 : index) : i64
    %622 = llvm.mlir.constant(1 : index) : i64
    %623 = llvm.mlir.constant(1 : index) : i64
    %624 = llvm.mlir.null : !llvm.ptr<i1>
    %625 = llvm.getelementptr %624[%619] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %626 = llvm.ptrtoint %625 : !llvm.ptr<i1> to i64
    %627 = llvm.mlir.constant(16 : index) : i64
    %628 = llvm.add %626, %627  : i64
    %629 = llvm.call @malloc(%628) : (i64) -> !llvm.ptr<i8>
    %630 = llvm.bitcast %629 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %631 = llvm.ptrtoint %630 : !llvm.ptr<i1> to i64
    %632 = llvm.mlir.constant(1 : index) : i64
    %633 = llvm.sub %627, %632  : i64
    %634 = llvm.add %631, %633  : i64
    %635 = llvm.urem %634, %627  : i64
    %636 = llvm.sub %634, %635  : i64
    %637 = llvm.inttoptr %636 : i64 to !llvm.ptr<i1>
    %638 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>
    %639 = llvm.insertvalue %630, %638[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %640 = llvm.insertvalue %637, %639[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %641 = llvm.mlir.constant(0 : index) : i64
    %642 = llvm.insertvalue %641, %640[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %643 = llvm.insertvalue %619, %642[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %644 = llvm.insertvalue %620, %643[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %645 = llvm.insertvalue %621, %644[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %646 = llvm.insertvalue %622, %645[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %647 = llvm.insertvalue %620, %646[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %648 = llvm.insertvalue %621, %647[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %649 = llvm.insertvalue %622, %648[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %650 = llvm.insertvalue %623, %649[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %651 = llvm.mlir.constant(0 : index) : i64
    %652 = llvm.mlir.constant(1 : index) : i64
    %653 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb61(%651 : i64)
  ^bb61(%654: i64):  // 2 preds: ^bb60, ^bb71
    %655 = llvm.icmp "slt" %654, %652 : i64
    llvm.cond_br %655, ^bb62, ^bb72
  ^bb62:  // pred: ^bb61
    %656 = llvm.mlir.constant(0 : index) : i64
    %657 = llvm.mlir.constant(1 : index) : i64
    %658 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb63(%656 : i64)
  ^bb63(%659: i64):  // 2 preds: ^bb62, ^bb70
    %660 = llvm.icmp "slt" %659, %657 : i64
    llvm.cond_br %660, ^bb64, ^bb71
  ^bb64:  // pred: ^bb63
    %661 = llvm.mlir.constant(0 : index) : i64
    %662 = llvm.mlir.constant(1 : index) : i64
    %663 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb65(%661 : i64)
  ^bb65(%664: i64):  // 2 preds: ^bb64, ^bb69
    %665 = llvm.icmp "slt" %664, %662 : i64
    llvm.cond_br %665, ^bb66, ^bb70
  ^bb66:  // pred: ^bb65
    %666 = llvm.mlir.constant(0 : index) : i64
    %667 = llvm.mlir.constant(1 : index) : i64
    %668 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb67(%666 : i64)
  ^bb67(%669: i64):  // 2 preds: ^bb66, ^bb68
    %670 = llvm.icmp "slt" %669, %667 : i64
    llvm.cond_br %670, ^bb68, ^bb69
  ^bb68:  // pred: ^bb67
    %671 = llvm.extractvalue %561[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %672 = llvm.add %654, %659  : i64
    %673 = llvm.add %672, %664  : i64
    %674 = llvm.add %673, %669  : i64
    %675 = llvm.getelementptr %671[%674] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %676 = llvm.load %675 : !llvm.ptr<i32>
    %677 = llvm.extractvalue %561[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %678 = llvm.add %654, %659  : i64
    %679 = llvm.add %678, %664  : i64
    %680 = llvm.add %679, %669  : i64
    %681 = llvm.getelementptr %677[%680] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %682 = llvm.load %681 : !llvm.ptr<i32>
    %683 = llvm.icmp "sgt" %676, %682 : i32
    %684 = llvm.extractvalue %650[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %685 = llvm.add %654, %659  : i64
    %686 = llvm.add %685, %664  : i64
    %687 = llvm.add %686, %669  : i64
    %688 = llvm.getelementptr %684[%687] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %683, %688 : !llvm.ptr<i1>
    %689 = llvm.add %669, %668  : i64
    llvm.br ^bb67(%689 : i64)
  ^bb69:  // pred: ^bb67
    %690 = llvm.add %664, %663  : i64
    llvm.br ^bb65(%690 : i64)
  ^bb70:  // pred: ^bb65
    %691 = llvm.add %659, %658  : i64
    llvm.br ^bb63(%691 : i64)
  ^bb71:  // pred: ^bb63
    %692 = llvm.add %654, %653  : i64
    llvm.br ^bb61(%692 : i64)
  ^bb72:  // pred: ^bb61
    %693 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>
    %694 = llvm.insertvalue %480, %693[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %695 = llvm.insertvalue %618, %694[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %696 = llvm.insertvalue %650, %695[2] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> 
    llvm.return %696 : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) attributes {input_names = ["v0_0"], llvm.emit_c_interface, output_names = ["v4_0", "v5_0", "v2_0"]} {
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
    %12 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>
    llvm.store %12, %arg0 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>>
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
    llvm.call @_mlir_ciface_main_graph(%2, %6) : (!llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) -> ()
    %44 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %45 = llvm.extractvalue %44[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %46 = llvm.extractvalue %44[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %47 = llvm.extractvalue %44[2] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %48 = llvm.mlir.constant(3 : i64) : i64
    %49 = llvm.mlir.constant(24 : i64) : i64
    %50 = llvm.call @malloc(%49) : (i64) -> !llvm.ptr<i8>
    %51 = llvm.bitcast %50 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %52 = llvm.mlir.constant(4 : i64) : i64
    %53 = llvm.call @omTensorCreateUntyped(%52) : (i64) -> !llvm.ptr<i8>
    %54 = llvm.mlir.constant(1 : i64) : i64
    %55 = llvm.extractvalue %45[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %56 = llvm.bitcast %55 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %57 = llvm.extractvalue %45[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %58 = llvm.bitcast %57 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%53, %54, %56, %58) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %59 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%53, %59) : (!llvm.ptr<i8>, i64) -> ()
    %60 = llvm.call @omTensorGetShape(%53) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %61 = llvm.call @omTensorGetStrides(%53) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %62 = llvm.mlir.constant(0 : i64) : i64
    %63 = llvm.extractvalue %45[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %64 = llvm.getelementptr %60[%62] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %63, %64 : !llvm.ptr<i64>
    %65 = llvm.extractvalue %45[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %66 = llvm.getelementptr %61[%62] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %65, %66 : !llvm.ptr<i64>
    %67 = llvm.mlir.constant(1 : i64) : i64
    %68 = llvm.extractvalue %45[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %69 = llvm.getelementptr %60[%67] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %68, %69 : !llvm.ptr<i64>
    %70 = llvm.extractvalue %45[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %71 = llvm.getelementptr %61[%67] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %70, %71 : !llvm.ptr<i64>
    %72 = llvm.mlir.constant(2 : i64) : i64
    %73 = llvm.extractvalue %45[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %74 = llvm.getelementptr %60[%72] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %73, %74 : !llvm.ptr<i64>
    %75 = llvm.extractvalue %45[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %76 = llvm.getelementptr %61[%72] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %75, %76 : !llvm.ptr<i64>
    %77 = llvm.mlir.constant(3 : i64) : i64
    %78 = llvm.extractvalue %45[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %79 = llvm.getelementptr %60[%77] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %78, %79 : !llvm.ptr<i64>
    %80 = llvm.extractvalue %45[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %81 = llvm.getelementptr %61[%77] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %80, %81 : !llvm.ptr<i64>
    %82 = llvm.mlir.constant(0 : i64) : i64
    %83 = llvm.getelementptr %51[%82] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %53, %83 : !llvm.ptr<ptr<i8>>
    %84 = llvm.mlir.constant(2 : i64) : i64
    %85 = llvm.call @omTensorCreateUntyped(%84) : (i64) -> !llvm.ptr<i8>
    %86 = llvm.mlir.constant(1 : i64) : i64
    %87 = llvm.extractvalue %46[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %88 = llvm.bitcast %87 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %89 = llvm.extractvalue %46[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %90 = llvm.bitcast %89 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%85, %86, %88, %90) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %91 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%85, %91) : (!llvm.ptr<i8>, i64) -> ()
    %92 = llvm.call @omTensorGetShape(%85) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %93 = llvm.call @omTensorGetStrides(%85) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %94 = llvm.mlir.constant(0 : i64) : i64
    %95 = llvm.extractvalue %46[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %96 = llvm.getelementptr %92[%94] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %95, %96 : !llvm.ptr<i64>
    %97 = llvm.extractvalue %46[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %98 = llvm.getelementptr %93[%94] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %97, %98 : !llvm.ptr<i64>
    %99 = llvm.mlir.constant(1 : i64) : i64
    %100 = llvm.extractvalue %46[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %101 = llvm.getelementptr %92[%99] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %100, %101 : !llvm.ptr<i64>
    %102 = llvm.extractvalue %46[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %103 = llvm.getelementptr %93[%99] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %102, %103 : !llvm.ptr<i64>
    %104 = llvm.mlir.constant(1 : i64) : i64
    %105 = llvm.getelementptr %51[%104] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %85, %105 : !llvm.ptr<ptr<i8>>
    %106 = llvm.mlir.constant(4 : i64) : i64
    %107 = llvm.call @omTensorCreateUntyped(%106) : (i64) -> !llvm.ptr<i8>
    %108 = llvm.mlir.constant(1 : i64) : i64
    %109 = llvm.extractvalue %47[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %110 = llvm.bitcast %109 : !llvm.ptr<i1> to !llvm.ptr<i8>
    %111 = llvm.extractvalue %47[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %112 = llvm.bitcast %111 : !llvm.ptr<i1> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%107, %108, %110, %112) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %113 = llvm.mlir.constant(9 : i64) : i64
    llvm.call @omTensorSetDataType(%107, %113) : (!llvm.ptr<i8>, i64) -> ()
    %114 = llvm.call @omTensorGetShape(%107) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %115 = llvm.call @omTensorGetStrides(%107) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %116 = llvm.mlir.constant(0 : i64) : i64
    %117 = llvm.extractvalue %47[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %118 = llvm.getelementptr %114[%116] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %117, %118 : !llvm.ptr<i64>
    %119 = llvm.extractvalue %47[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %120 = llvm.getelementptr %115[%116] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %119, %120 : !llvm.ptr<i64>
    %121 = llvm.mlir.constant(1 : i64) : i64
    %122 = llvm.extractvalue %47[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %123 = llvm.getelementptr %114[%121] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %122, %123 : !llvm.ptr<i64>
    %124 = llvm.extractvalue %47[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %125 = llvm.getelementptr %115[%121] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %124, %125 : !llvm.ptr<i64>
    %126 = llvm.mlir.constant(2 : i64) : i64
    %127 = llvm.extractvalue %47[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %128 = llvm.getelementptr %114[%126] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %127, %128 : !llvm.ptr<i64>
    %129 = llvm.extractvalue %47[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %130 = llvm.getelementptr %115[%126] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %129, %130 : !llvm.ptr<i64>
    %131 = llvm.mlir.constant(3 : i64) : i64
    %132 = llvm.extractvalue %47[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %133 = llvm.getelementptr %114[%131] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %132, %133 : !llvm.ptr<i64>
    %134 = llvm.extractvalue %47[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
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
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<202 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<202 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

