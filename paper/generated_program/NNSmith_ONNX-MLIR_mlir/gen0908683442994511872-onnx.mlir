module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v5_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 4] , \22name\22 : \22v3_0\22 }\0A ,    { \22type\22 : \22i64\22 , \22dims\22 : [1 , 1] , \22name\22 : \22v4_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.mlir.global internal constant @constant_6(dense<6> : tensor<1x1x1x1xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x array<1 x array<1 x array<1 x i32>>>>
  llvm.mlir.global internal constant @constant_5(dense<4> : tensor<1x1x1x1xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x array<1 x array<1 x array<1 x i32>>>>
  llvm.mlir.global internal constant @constant_4(dense<[1, 1, 1, 4]> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.mlir.global internal constant @constant_3(dense<-1> : tensor<i64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i64>
  llvm.mlir.global internal constant @constant_2(dense<[1, 1, 1, 4]> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>)> attributes {input_names = ["v5_0"], llvm.emit_c_interface, output_names = ["v3_0", "v4_0"]} {
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
    %14 = llvm.mlir.constant(1 : i64) : i64
    %15 = llvm.mlir.constant(0 : index) : i64
    %16 = llvm.mlir.addressof @constant_2 : !llvm.ptr<array<4 x i64>>
    %17 = llvm.bitcast %16 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %18 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %19 = llvm.insertvalue %17, %18[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %20 = llvm.insertvalue %17, %19[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %21 = llvm.mlir.constant(0 : index) : i64
    %22 = llvm.insertvalue %21, %20[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %23 = llvm.mlir.constant(4 : index) : i64
    %24 = llvm.insertvalue %23, %22[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %25 = llvm.mlir.constant(1 : index) : i64
    %26 = llvm.insertvalue %25, %24[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %27 = llvm.mlir.addressof @constant_3 : !llvm.ptr<array<1 x i64>>
    %28 = llvm.bitcast %27 : !llvm.ptr<array<1 x i64>> to !llvm.ptr<i64>
    %29 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64)>
    %30 = llvm.insertvalue %28, %29[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %31 = llvm.insertvalue %28, %30[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %32 = llvm.mlir.constant(0 : index) : i64
    %33 = llvm.insertvalue %32, %31[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %34 = llvm.mlir.addressof @constant_4 : !llvm.ptr<array<4 x i64>>
    %35 = llvm.bitcast %34 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %36 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %37 = llvm.insertvalue %35, %36[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %38 = llvm.insertvalue %35, %37[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %39 = llvm.mlir.constant(0 : index) : i64
    %40 = llvm.insertvalue %39, %38[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %41 = llvm.mlir.constant(4 : index) : i64
    %42 = llvm.insertvalue %41, %40[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %43 = llvm.mlir.constant(1 : index) : i64
    %44 = llvm.insertvalue %43, %42[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %45 = llvm.mlir.addressof @constant_5 : !llvm.ptr<array<1 x array<1 x array<1 x array<1 x i32>>>>>
    %46 = llvm.bitcast %45 : !llvm.ptr<array<1 x array<1 x array<1 x array<1 x i32>>>>> to !llvm.ptr<i32>
    %47 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %48 = llvm.insertvalue %46, %47[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %49 = llvm.insertvalue %46, %48[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %50 = llvm.mlir.constant(0 : index) : i64
    %51 = llvm.insertvalue %50, %49[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %52 = llvm.mlir.constant(1 : index) : i64
    %53 = llvm.insertvalue %52, %51[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %54 = llvm.mlir.constant(1 : index) : i64
    %55 = llvm.insertvalue %54, %53[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %56 = llvm.mlir.constant(1 : index) : i64
    %57 = llvm.insertvalue %56, %55[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %58 = llvm.mlir.constant(1 : index) : i64
    %59 = llvm.insertvalue %58, %57[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %60 = llvm.mlir.constant(1 : index) : i64
    %61 = llvm.insertvalue %60, %59[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %62 = llvm.mlir.constant(1 : index) : i64
    %63 = llvm.insertvalue %62, %61[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %64 = llvm.mlir.constant(1 : index) : i64
    %65 = llvm.insertvalue %64, %63[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %66 = llvm.mlir.constant(1 : index) : i64
    %67 = llvm.insertvalue %66, %65[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %68 = llvm.mlir.addressof @constant_6 : !llvm.ptr<array<1 x array<1 x array<1 x array<1 x i32>>>>>
    %69 = llvm.bitcast %68 : !llvm.ptr<array<1 x array<1 x array<1 x array<1 x i32>>>>> to !llvm.ptr<i32>
    %70 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %71 = llvm.insertvalue %69, %70[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %72 = llvm.insertvalue %69, %71[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %73 = llvm.mlir.constant(0 : index) : i64
    %74 = llvm.insertvalue %73, %72[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %75 = llvm.mlir.constant(1 : index) : i64
    %76 = llvm.insertvalue %75, %74[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %77 = llvm.mlir.constant(1 : index) : i64
    %78 = llvm.insertvalue %77, %76[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %79 = llvm.mlir.constant(1 : index) : i64
    %80 = llvm.insertvalue %79, %78[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %81 = llvm.mlir.constant(1 : index) : i64
    %82 = llvm.insertvalue %81, %80[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %83 = llvm.mlir.constant(1 : index) : i64
    %84 = llvm.insertvalue %83, %82[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %85 = llvm.mlir.constant(1 : index) : i64
    %86 = llvm.insertvalue %85, %84[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %87 = llvm.mlir.constant(1 : index) : i64
    %88 = llvm.insertvalue %87, %86[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %89 = llvm.mlir.constant(1 : index) : i64
    %90 = llvm.insertvalue %89, %88[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %91 = llvm.mlir.constant(1 : index) : i64
    %92 = llvm.mlir.constant(1 : index) : i64
    %93 = llvm.mlir.constant(1 : index) : i64
    %94 = llvm.mlir.constant(4 : index) : i64
    %95 = llvm.mlir.constant(1 : index) : i64
    %96 = llvm.mlir.constant(4 : index) : i64
    %97 = llvm.mlir.constant(4 : index) : i64
    %98 = llvm.mlir.constant(4 : index) : i64
    %99 = llvm.mlir.null : !llvm.ptr<i32>
    %100 = llvm.getelementptr %99[%98] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %101 = llvm.ptrtoint %100 : !llvm.ptr<i32> to i64
    %102 = llvm.mlir.constant(16 : index) : i64
    %103 = llvm.add %101, %102  : i64
    %104 = llvm.call @malloc(%103) : (i64) -> !llvm.ptr<i8>
    %105 = llvm.bitcast %104 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %106 = llvm.ptrtoint %105 : !llvm.ptr<i32> to i64
    %107 = llvm.mlir.constant(1 : index) : i64
    %108 = llvm.sub %102, %107  : i64
    %109 = llvm.add %106, %108  : i64
    %110 = llvm.urem %109, %102  : i64
    %111 = llvm.sub %109, %110  : i64
    %112 = llvm.inttoptr %111 : i64 to !llvm.ptr<i32>
    %113 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %114 = llvm.insertvalue %105, %113[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %115 = llvm.insertvalue %112, %114[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %116 = llvm.mlir.constant(0 : index) : i64
    %117 = llvm.insertvalue %116, %115[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %118 = llvm.insertvalue %91, %117[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %119 = llvm.insertvalue %92, %118[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %120 = llvm.insertvalue %93, %119[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %121 = llvm.insertvalue %94, %120[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %122 = llvm.insertvalue %97, %121[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %123 = llvm.insertvalue %96, %122[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %124 = llvm.insertvalue %94, %123[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %125 = llvm.insertvalue %95, %124[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %126 = llvm.mlir.constant(0 : index) : i64
    %127 = llvm.mlir.constant(1 : index) : i64
    %128 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%126 : i64)
  ^bb1(%129: i64):  // 2 preds: ^bb0, ^bb11
    %130 = llvm.icmp "slt" %129, %127 : i64
    llvm.cond_br %130, ^bb2, ^bb12
  ^bb2:  // pred: ^bb1
    %131 = llvm.mlir.constant(0 : index) : i64
    %132 = llvm.mlir.constant(1 : index) : i64
    %133 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%131 : i64)
  ^bb3(%134: i64):  // 2 preds: ^bb2, ^bb10
    %135 = llvm.icmp "slt" %134, %132 : i64
    llvm.cond_br %135, ^bb4, ^bb11
  ^bb4:  // pred: ^bb3
    %136 = llvm.mlir.constant(0 : index) : i64
    %137 = llvm.mlir.constant(1 : index) : i64
    %138 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%136 : i64)
  ^bb5(%139: i64):  // 2 preds: ^bb4, ^bb9
    %140 = llvm.icmp "slt" %139, %137 : i64
    llvm.cond_br %140, ^bb6, ^bb10
  ^bb6:  // pred: ^bb5
    %141 = llvm.mlir.constant(0 : index) : i64
    %142 = llvm.mlir.constant(1 : index) : i64
    %143 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%141 : i64)
  ^bb7(%144: i64):  // 2 preds: ^bb6, ^bb8
    %145 = llvm.icmp "slt" %144, %142 : i64
    llvm.cond_br %145, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %146 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %147 = llvm.add %129, %134  : i64
    %148 = llvm.add %147, %139  : i64
    %149 = llvm.add %148, %144  : i64
    %150 = llvm.getelementptr %146[%149] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %151 = llvm.load %150 : !llvm.ptr<i32>
    %152 = llvm.extractvalue %125[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %153 = llvm.mlir.constant(4 : index) : i64
    %154 = llvm.mul %129, %153  : i64
    %155 = llvm.mlir.constant(4 : index) : i64
    %156 = llvm.mul %134, %155  : i64
    %157 = llvm.add %154, %156  : i64
    %158 = llvm.mlir.constant(4 : index) : i64
    %159 = llvm.mul %139, %158  : i64
    %160 = llvm.add %157, %159  : i64
    %161 = llvm.add %160, %144  : i64
    %162 = llvm.getelementptr %152[%161] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %151, %162 : !llvm.ptr<i32>
    %163 = llvm.add %144, %143  : i64
    llvm.br ^bb7(%163 : i64)
  ^bb9:  // pred: ^bb7
    %164 = llvm.add %139, %138  : i64
    llvm.br ^bb5(%164 : i64)
  ^bb10:  // pred: ^bb5
    %165 = llvm.add %134, %133  : i64
    llvm.br ^bb3(%165 : i64)
  ^bb11:  // pred: ^bb3
    %166 = llvm.add %129, %128  : i64
    llvm.br ^bb1(%166 : i64)
  ^bb12:  // pred: ^bb1
    %167 = llvm.mlir.constant(0 : index) : i64
    %168 = llvm.mlir.constant(1 : index) : i64
    %169 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%167 : i64)
  ^bb13(%170: i64):  // 2 preds: ^bb12, ^bb23
    %171 = llvm.icmp "slt" %170, %168 : i64
    llvm.cond_br %171, ^bb14, ^bb24
  ^bb14:  // pred: ^bb13
    %172 = llvm.mlir.constant(0 : index) : i64
    %173 = llvm.mlir.constant(1 : index) : i64
    %174 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb15(%172 : i64)
  ^bb15(%175: i64):  // 2 preds: ^bb14, ^bb22
    %176 = llvm.icmp "slt" %175, %173 : i64
    llvm.cond_br %176, ^bb16, ^bb23
  ^bb16:  // pred: ^bb15
    %177 = llvm.mlir.constant(0 : index) : i64
    %178 = llvm.mlir.constant(1 : index) : i64
    %179 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb17(%177 : i64)
  ^bb17(%180: i64):  // 2 preds: ^bb16, ^bb21
    %181 = llvm.icmp "slt" %180, %178 : i64
    llvm.cond_br %181, ^bb18, ^bb22
  ^bb18:  // pred: ^bb17
    %182 = llvm.mlir.constant(0 : index) : i64
    %183 = llvm.mlir.constant(1 : index) : i64
    %184 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%182 : i64)
  ^bb19(%185: i64):  // 2 preds: ^bb18, ^bb20
    %186 = llvm.icmp "slt" %185, %183 : i64
    llvm.cond_br %186, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %187 = llvm.mlir.constant(1 : index) : i64
    %188 = llvm.add %185, %187  : i64
    %189 = llvm.extractvalue %90[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %190 = llvm.add %170, %175  : i64
    %191 = llvm.add %190, %180  : i64
    %192 = llvm.add %191, %185  : i64
    %193 = llvm.getelementptr %189[%192] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %194 = llvm.load %193 : !llvm.ptr<i32>
    %195 = llvm.extractvalue %125[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %196 = llvm.mlir.constant(4 : index) : i64
    %197 = llvm.mul %170, %196  : i64
    %198 = llvm.mlir.constant(4 : index) : i64
    %199 = llvm.mul %175, %198  : i64
    %200 = llvm.add %197, %199  : i64
    %201 = llvm.mlir.constant(4 : index) : i64
    %202 = llvm.mul %180, %201  : i64
    %203 = llvm.add %200, %202  : i64
    %204 = llvm.add %203, %188  : i64
    %205 = llvm.getelementptr %195[%204] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %194, %205 : !llvm.ptr<i32>
    %206 = llvm.add %185, %184  : i64
    llvm.br ^bb19(%206 : i64)
  ^bb21:  // pred: ^bb19
    %207 = llvm.add %180, %179  : i64
    llvm.br ^bb17(%207 : i64)
  ^bb22:  // pred: ^bb17
    %208 = llvm.add %175, %174  : i64
    llvm.br ^bb15(%208 : i64)
  ^bb23:  // pred: ^bb15
    %209 = llvm.add %170, %169  : i64
    llvm.br ^bb13(%209 : i64)
  ^bb24:  // pred: ^bb13
    %210 = llvm.mlir.constant(0 : index) : i64
    %211 = llvm.mlir.constant(1 : index) : i64
    %212 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb25(%210 : i64)
  ^bb25(%213: i64):  // 2 preds: ^bb24, ^bb35
    %214 = llvm.icmp "slt" %213, %211 : i64
    llvm.cond_br %214, ^bb26, ^bb36
  ^bb26:  // pred: ^bb25
    %215 = llvm.mlir.constant(0 : index) : i64
    %216 = llvm.mlir.constant(1 : index) : i64
    %217 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb27(%215 : i64)
  ^bb27(%218: i64):  // 2 preds: ^bb26, ^bb34
    %219 = llvm.icmp "slt" %218, %216 : i64
    llvm.cond_br %219, ^bb28, ^bb35
  ^bb28:  // pred: ^bb27
    %220 = llvm.mlir.constant(0 : index) : i64
    %221 = llvm.mlir.constant(1 : index) : i64
    %222 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb29(%220 : i64)
  ^bb29(%223: i64):  // 2 preds: ^bb28, ^bb33
    %224 = llvm.icmp "slt" %223, %221 : i64
    llvm.cond_br %224, ^bb30, ^bb34
  ^bb30:  // pred: ^bb29
    %225 = llvm.mlir.constant(0 : index) : i64
    %226 = llvm.mlir.constant(1 : index) : i64
    %227 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb31(%225 : i64)
  ^bb31(%228: i64):  // 2 preds: ^bb30, ^bb32
    %229 = llvm.icmp "slt" %228, %226 : i64
    llvm.cond_br %229, ^bb32, ^bb33
  ^bb32:  // pred: ^bb31
    %230 = llvm.mlir.constant(2 : index) : i64
    %231 = llvm.add %228, %230  : i64
    %232 = llvm.extractvalue %67[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %233 = llvm.add %213, %218  : i64
    %234 = llvm.add %233, %223  : i64
    %235 = llvm.add %234, %228  : i64
    %236 = llvm.getelementptr %232[%235] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %237 = llvm.load %236 : !llvm.ptr<i32>
    %238 = llvm.extractvalue %125[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %239 = llvm.mlir.constant(4 : index) : i64
    %240 = llvm.mul %213, %239  : i64
    %241 = llvm.mlir.constant(4 : index) : i64
    %242 = llvm.mul %218, %241  : i64
    %243 = llvm.add %240, %242  : i64
    %244 = llvm.mlir.constant(4 : index) : i64
    %245 = llvm.mul %223, %244  : i64
    %246 = llvm.add %243, %245  : i64
    %247 = llvm.add %246, %231  : i64
    %248 = llvm.getelementptr %238[%247] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %237, %248 : !llvm.ptr<i32>
    %249 = llvm.add %228, %227  : i64
    llvm.br ^bb31(%249 : i64)
  ^bb33:  // pred: ^bb31
    %250 = llvm.add %223, %222  : i64
    llvm.br ^bb29(%250 : i64)
  ^bb34:  // pred: ^bb29
    %251 = llvm.add %218, %217  : i64
    llvm.br ^bb27(%251 : i64)
  ^bb35:  // pred: ^bb27
    %252 = llvm.add %213, %212  : i64
    llvm.br ^bb25(%252 : i64)
  ^bb36:  // pred: ^bb25
    %253 = llvm.mlir.constant(0 : index) : i64
    %254 = llvm.mlir.constant(1 : index) : i64
    %255 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb37(%253 : i64)
  ^bb37(%256: i64):  // 2 preds: ^bb36, ^bb47
    %257 = llvm.icmp "slt" %256, %254 : i64
    llvm.cond_br %257, ^bb38, ^bb48
  ^bb38:  // pred: ^bb37
    %258 = llvm.mlir.constant(0 : index) : i64
    %259 = llvm.mlir.constant(1 : index) : i64
    %260 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb39(%258 : i64)
  ^bb39(%261: i64):  // 2 preds: ^bb38, ^bb46
    %262 = llvm.icmp "slt" %261, %259 : i64
    llvm.cond_br %262, ^bb40, ^bb47
  ^bb40:  // pred: ^bb39
    %263 = llvm.mlir.constant(0 : index) : i64
    %264 = llvm.mlir.constant(1 : index) : i64
    %265 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb41(%263 : i64)
  ^bb41(%266: i64):  // 2 preds: ^bb40, ^bb45
    %267 = llvm.icmp "slt" %266, %264 : i64
    llvm.cond_br %267, ^bb42, ^bb46
  ^bb42:  // pred: ^bb41
    %268 = llvm.mlir.constant(0 : index) : i64
    %269 = llvm.mlir.constant(1 : index) : i64
    %270 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb43(%268 : i64)
  ^bb43(%271: i64):  // 2 preds: ^bb42, ^bb44
    %272 = llvm.icmp "slt" %271, %269 : i64
    llvm.cond_br %272, ^bb44, ^bb45
  ^bb44:  // pred: ^bb43
    %273 = llvm.mlir.constant(3 : index) : i64
    %274 = llvm.add %271, %273  : i64
    %275 = llvm.extractvalue %67[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %276 = llvm.add %256, %261  : i64
    %277 = llvm.add %276, %266  : i64
    %278 = llvm.add %277, %271  : i64
    %279 = llvm.getelementptr %275[%278] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %280 = llvm.load %279 : !llvm.ptr<i32>
    %281 = llvm.extractvalue %125[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %282 = llvm.mlir.constant(4 : index) : i64
    %283 = llvm.mul %256, %282  : i64
    %284 = llvm.mlir.constant(4 : index) : i64
    %285 = llvm.mul %261, %284  : i64
    %286 = llvm.add %283, %285  : i64
    %287 = llvm.mlir.constant(4 : index) : i64
    %288 = llvm.mul %266, %287  : i64
    %289 = llvm.add %286, %288  : i64
    %290 = llvm.add %289, %274  : i64
    %291 = llvm.getelementptr %281[%290] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %280, %291 : !llvm.ptr<i32>
    %292 = llvm.add %271, %270  : i64
    llvm.br ^bb43(%292 : i64)
  ^bb45:  // pred: ^bb43
    %293 = llvm.add %266, %265  : i64
    llvm.br ^bb41(%293 : i64)
  ^bb46:  // pred: ^bb41
    %294 = llvm.add %261, %260  : i64
    llvm.br ^bb39(%294 : i64)
  ^bb47:  // pred: ^bb39
    %295 = llvm.add %256, %255  : i64
    llvm.br ^bb37(%295 : i64)
  ^bb48:  // pred: ^bb37
    %296 = llvm.mlir.constant(4 : index) : i64
    %297 = llvm.mlir.constant(1 : index) : i64
    %298 = llvm.mlir.null : !llvm.ptr<i64>
    %299 = llvm.getelementptr %298[%296] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %300 = llvm.ptrtoint %299 : !llvm.ptr<i64> to i64
    %301 = llvm.mlir.constant(16 : index) : i64
    %302 = llvm.add %300, %301  : i64
    %303 = llvm.call @malloc(%302) : (i64) -> !llvm.ptr<i8>
    %304 = llvm.bitcast %303 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %305 = llvm.ptrtoint %304 : !llvm.ptr<i64> to i64
    %306 = llvm.mlir.constant(1 : index) : i64
    %307 = llvm.sub %301, %306  : i64
    %308 = llvm.add %305, %307  : i64
    %309 = llvm.urem %308, %301  : i64
    %310 = llvm.sub %308, %309  : i64
    %311 = llvm.inttoptr %310 : i64 to !llvm.ptr<i64>
    %312 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %313 = llvm.insertvalue %304, %312[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %314 = llvm.insertvalue %311, %313[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %315 = llvm.mlir.constant(0 : index) : i64
    %316 = llvm.insertvalue %315, %314[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %317 = llvm.insertvalue %296, %316[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %318 = llvm.insertvalue %297, %317[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %319 = llvm.mlir.constant(0 : index) : i64
    %320 = llvm.mlir.constant(4 : index) : i64
    %321 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb49(%319 : i64)
  ^bb49(%322: i64):  // 2 preds: ^bb48, ^bb50
    %323 = llvm.icmp "slt" %322, %320 : i64
    llvm.cond_br %323, ^bb50, ^bb51
  ^bb50:  // pred: ^bb49
    %324 = llvm.extractvalue %318[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %325 = llvm.getelementptr %324[%322] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %14, %325 : !llvm.ptr<i64>
    %326 = llvm.add %322, %321  : i64
    llvm.br ^bb49(%326 : i64)
  ^bb51:  // pred: ^bb49
    %327 = llvm.mlir.constant(4 : index) : i64
    %328 = llvm.mlir.constant(1 : index) : i64
    %329 = llvm.mlir.null : !llvm.ptr<i64>
    %330 = llvm.getelementptr %329[%327] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %331 = llvm.ptrtoint %330 : !llvm.ptr<i64> to i64
    %332 = llvm.mlir.constant(16 : index) : i64
    %333 = llvm.add %331, %332  : i64
    %334 = llvm.call @malloc(%333) : (i64) -> !llvm.ptr<i8>
    %335 = llvm.bitcast %334 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %336 = llvm.ptrtoint %335 : !llvm.ptr<i64> to i64
    %337 = llvm.mlir.constant(1 : index) : i64
    %338 = llvm.sub %332, %337  : i64
    %339 = llvm.add %336, %338  : i64
    %340 = llvm.urem %339, %332  : i64
    %341 = llvm.sub %339, %340  : i64
    %342 = llvm.inttoptr %341 : i64 to !llvm.ptr<i64>
    %343 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %344 = llvm.insertvalue %335, %343[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %345 = llvm.insertvalue %342, %344[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %346 = llvm.mlir.constant(0 : index) : i64
    %347 = llvm.insertvalue %346, %345[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %348 = llvm.insertvalue %327, %347[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %349 = llvm.insertvalue %328, %348[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %350 = llvm.mlir.constant(0 : index) : i64
    %351 = llvm.mlir.constant(4 : index) : i64
    %352 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb52(%350 : i64)
  ^bb52(%353: i64):  // 2 preds: ^bb51, ^bb53
    %354 = llvm.icmp "slt" %353, %351 : i64
    llvm.cond_br %354, ^bb53, ^bb54
  ^bb53:  // pred: ^bb52
    %355 = llvm.extractvalue %318[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %356 = llvm.getelementptr %355[%353] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %357 = llvm.load %356 : !llvm.ptr<i64>
    %358 = llvm.extractvalue %33[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %359 = llvm.load %358 : !llvm.ptr<i64>
    %360 = llvm.mul %357, %359  : i64
    %361 = llvm.extractvalue %349[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %362 = llvm.getelementptr %361[%353] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %360, %362 : !llvm.ptr<i64>
    %363 = llvm.add %353, %352  : i64
    llvm.br ^bb52(%363 : i64)
  ^bb54:  // pred: ^bb52
    %364 = llvm.mlir.constant(4 : index) : i64
    %365 = llvm.mlir.constant(1 : index) : i64
    %366 = llvm.mlir.null : !llvm.ptr<i1>
    %367 = llvm.getelementptr %366[%364] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %368 = llvm.ptrtoint %367 : !llvm.ptr<i1> to i64
    %369 = llvm.mlir.constant(16 : index) : i64
    %370 = llvm.add %368, %369  : i64
    %371 = llvm.call @malloc(%370) : (i64) -> !llvm.ptr<i8>
    %372 = llvm.bitcast %371 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %373 = llvm.ptrtoint %372 : !llvm.ptr<i1> to i64
    %374 = llvm.mlir.constant(1 : index) : i64
    %375 = llvm.sub %369, %374  : i64
    %376 = llvm.add %373, %375  : i64
    %377 = llvm.urem %376, %369  : i64
    %378 = llvm.sub %376, %377  : i64
    %379 = llvm.inttoptr %378 : i64 to !llvm.ptr<i1>
    %380 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %381 = llvm.insertvalue %372, %380[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %382 = llvm.insertvalue %379, %381[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %383 = llvm.mlir.constant(0 : index) : i64
    %384 = llvm.insertvalue %383, %382[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %385 = llvm.insertvalue %364, %384[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %386 = llvm.insertvalue %365, %385[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %387 = llvm.mlir.constant(0 : index) : i64
    %388 = llvm.mlir.constant(4 : index) : i64
    %389 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb55(%387 : i64)
  ^bb55(%390: i64):  // 2 preds: ^bb54, ^bb56
    %391 = llvm.icmp "slt" %390, %388 : i64
    llvm.cond_br %391, ^bb56, ^bb57
  ^bb56:  // pred: ^bb55
    %392 = llvm.extractvalue %26[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %393 = llvm.getelementptr %392[%390] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %394 = llvm.load %393 : !llvm.ptr<i64>
    %395 = llvm.extractvalue %349[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %396 = llvm.getelementptr %395[%390] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %397 = llvm.load %396 : !llvm.ptr<i64>
    %398 = llvm.icmp "eq" %394, %397 : i64
    %399 = llvm.extractvalue %386[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %400 = llvm.getelementptr %399[%390] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %398, %400 : !llvm.ptr<i1>
    %401 = llvm.add %390, %389  : i64
    llvm.br ^bb55(%401 : i64)
  ^bb57:  // pred: ^bb55
    %402 = llvm.mlir.constant(4 : index) : i64
    %403 = llvm.mlir.constant(1 : index) : i64
    %404 = llvm.mlir.null : !llvm.ptr<i64>
    %405 = llvm.getelementptr %404[%402] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %406 = llvm.ptrtoint %405 : !llvm.ptr<i64> to i64
    %407 = llvm.mlir.constant(16 : index) : i64
    %408 = llvm.add %406, %407  : i64
    %409 = llvm.call @malloc(%408) : (i64) -> !llvm.ptr<i8>
    %410 = llvm.bitcast %409 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %411 = llvm.ptrtoint %410 : !llvm.ptr<i64> to i64
    %412 = llvm.mlir.constant(1 : index) : i64
    %413 = llvm.sub %407, %412  : i64
    %414 = llvm.add %411, %413  : i64
    %415 = llvm.urem %414, %407  : i64
    %416 = llvm.sub %414, %415  : i64
    %417 = llvm.inttoptr %416 : i64 to !llvm.ptr<i64>
    %418 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %419 = llvm.insertvalue %410, %418[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %420 = llvm.insertvalue %417, %419[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %421 = llvm.mlir.constant(0 : index) : i64
    %422 = llvm.insertvalue %421, %420[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %423 = llvm.insertvalue %402, %422[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %424 = llvm.insertvalue %403, %423[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %425 = llvm.mlir.constant(0 : index) : i64
    %426 = llvm.mlir.constant(4 : index) : i64
    %427 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb58(%425 : i64)
  ^bb58(%428: i64):  // 2 preds: ^bb57, ^bb59
    %429 = llvm.icmp "slt" %428, %426 : i64
    llvm.cond_br %429, ^bb59, ^bb60
  ^bb59:  // pred: ^bb58
    %430 = llvm.extractvalue %386[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %431 = llvm.getelementptr %430[%428] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %432 = llvm.load %431 : !llvm.ptr<i1>
    %433 = llvm.extractvalue %318[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %434 = llvm.getelementptr %433[%428] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %435 = llvm.load %434 : !llvm.ptr<i64>
    %436 = llvm.extractvalue %44[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %437 = llvm.getelementptr %436[%428] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %438 = llvm.load %437 : !llvm.ptr<i64>
    %439 = llvm.select %432, %435, %438 : i1, i64
    %440 = llvm.extractvalue %424[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %441 = llvm.getelementptr %440[%428] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %439, %441 : !llvm.ptr<i64>
    %442 = llvm.add %428, %427  : i64
    llvm.br ^bb58(%442 : i64)
  ^bb60:  // pred: ^bb58
    %443 = llvm.mlir.constant(1 : index) : i64
    %444 = llvm.mlir.constant(1 : index) : i64
    %445 = llvm.mlir.constant(1 : index) : i64
    %446 = llvm.mlir.constant(4 : index) : i64
    %447 = llvm.mlir.constant(1 : index) : i64
    %448 = llvm.mlir.constant(4 : index) : i64
    %449 = llvm.mlir.constant(4 : index) : i64
    %450 = llvm.mlir.constant(4 : index) : i64
    %451 = llvm.mlir.null : !llvm.ptr<i32>
    %452 = llvm.getelementptr %451[%450] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %453 = llvm.ptrtoint %452 : !llvm.ptr<i32> to i64
    %454 = llvm.mlir.constant(16 : index) : i64
    %455 = llvm.add %453, %454  : i64
    %456 = llvm.call @malloc(%455) : (i64) -> !llvm.ptr<i8>
    %457 = llvm.bitcast %456 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %458 = llvm.ptrtoint %457 : !llvm.ptr<i32> to i64
    %459 = llvm.mlir.constant(1 : index) : i64
    %460 = llvm.sub %454, %459  : i64
    %461 = llvm.add %458, %460  : i64
    %462 = llvm.urem %461, %454  : i64
    %463 = llvm.sub %461, %462  : i64
    %464 = llvm.inttoptr %463 : i64 to !llvm.ptr<i32>
    %465 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %466 = llvm.insertvalue %457, %465[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %467 = llvm.insertvalue %464, %466[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %468 = llvm.mlir.constant(0 : index) : i64
    %469 = llvm.insertvalue %468, %467[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %470 = llvm.insertvalue %443, %469[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %471 = llvm.insertvalue %444, %470[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %472 = llvm.insertvalue %445, %471[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %473 = llvm.insertvalue %446, %472[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %474 = llvm.insertvalue %449, %473[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %475 = llvm.insertvalue %448, %474[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %476 = llvm.insertvalue %446, %475[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %477 = llvm.insertvalue %447, %476[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %478 = llvm.mlir.constant(0 : index) : i64
    %479 = llvm.mlir.constant(1 : index) : i64
    %480 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb61(%478 : i64)
  ^bb61(%481: i64):  // 2 preds: ^bb60, ^bb71
    %482 = llvm.icmp "slt" %481, %479 : i64
    llvm.cond_br %482, ^bb62, ^bb72
  ^bb62:  // pred: ^bb61
    %483 = llvm.mlir.constant(0 : index) : i64
    %484 = llvm.mlir.constant(1 : index) : i64
    %485 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb63(%483 : i64)
  ^bb63(%486: i64):  // 2 preds: ^bb62, ^bb70
    %487 = llvm.icmp "slt" %486, %484 : i64
    llvm.cond_br %487, ^bb64, ^bb71
  ^bb64:  // pred: ^bb63
    %488 = llvm.mlir.constant(0 : index) : i64
    %489 = llvm.mlir.constant(1 : index) : i64
    %490 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb65(%488 : i64)
  ^bb65(%491: i64):  // 2 preds: ^bb64, ^bb69
    %492 = llvm.icmp "slt" %491, %489 : i64
    llvm.cond_br %492, ^bb66, ^bb70
  ^bb66:  // pred: ^bb65
    %493 = llvm.mlir.constant(0 : index) : i64
    %494 = llvm.mlir.constant(4 : index) : i64
    %495 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb67(%493 : i64)
  ^bb67(%496: i64):  // 2 preds: ^bb66, ^bb68
    %497 = llvm.icmp "slt" %496, %494 : i64
    llvm.cond_br %497, ^bb68, ^bb69
  ^bb68:  // pred: ^bb67
    %498 = llvm.extractvalue %125[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %499 = llvm.mlir.constant(4 : index) : i64
    %500 = llvm.mul %15, %499  : i64
    %501 = llvm.mlir.constant(4 : index) : i64
    %502 = llvm.mul %15, %501  : i64
    %503 = llvm.add %500, %502  : i64
    %504 = llvm.mlir.constant(4 : index) : i64
    %505 = llvm.mul %15, %504  : i64
    %506 = llvm.add %503, %505  : i64
    %507 = llvm.add %506, %496  : i64
    %508 = llvm.getelementptr %498[%507] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %509 = llvm.load %508 : !llvm.ptr<i32>
    %510 = llvm.extractvalue %477[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %511 = llvm.mlir.constant(4 : index) : i64
    %512 = llvm.mul %481, %511  : i64
    %513 = llvm.mlir.constant(4 : index) : i64
    %514 = llvm.mul %486, %513  : i64
    %515 = llvm.add %512, %514  : i64
    %516 = llvm.mlir.constant(4 : index) : i64
    %517 = llvm.mul %491, %516  : i64
    %518 = llvm.add %515, %517  : i64
    %519 = llvm.add %518, %496  : i64
    %520 = llvm.getelementptr %510[%519] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %509, %520 : !llvm.ptr<i32>
    %521 = llvm.add %496, %495  : i64
    llvm.br ^bb67(%521 : i64)
  ^bb69:  // pred: ^bb67
    %522 = llvm.add %491, %490  : i64
    llvm.br ^bb65(%522 : i64)
  ^bb70:  // pred: ^bb65
    %523 = llvm.add %486, %485  : i64
    llvm.br ^bb63(%523 : i64)
  ^bb71:  // pred: ^bb63
    %524 = llvm.add %481, %480  : i64
    llvm.br ^bb61(%524 : i64)
  ^bb72:  // pred: ^bb61
    %525 = llvm.mlir.constant(1 : index) : i64
    %526 = llvm.mlir.constant(1 : index) : i64
    %527 = llvm.mlir.constant(1 : index) : i64
    %528 = llvm.mlir.constant(4 : index) : i64
    %529 = llvm.mlir.constant(1 : index) : i64
    %530 = llvm.mlir.constant(4 : index) : i64
    %531 = llvm.mlir.constant(4 : index) : i64
    %532 = llvm.mlir.constant(4 : index) : i64
    %533 = llvm.mlir.null : !llvm.ptr<i32>
    %534 = llvm.getelementptr %533[%532] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %535 = llvm.ptrtoint %534 : !llvm.ptr<i32> to i64
    %536 = llvm.mlir.constant(16 : index) : i64
    %537 = llvm.add %535, %536  : i64
    %538 = llvm.call @malloc(%537) : (i64) -> !llvm.ptr<i8>
    %539 = llvm.bitcast %538 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %540 = llvm.ptrtoint %539 : !llvm.ptr<i32> to i64
    %541 = llvm.mlir.constant(1 : index) : i64
    %542 = llvm.sub %536, %541  : i64
    %543 = llvm.add %540, %542  : i64
    %544 = llvm.urem %543, %536  : i64
    %545 = llvm.sub %543, %544  : i64
    %546 = llvm.inttoptr %545 : i64 to !llvm.ptr<i32>
    %547 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %548 = llvm.insertvalue %539, %547[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %549 = llvm.insertvalue %546, %548[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %550 = llvm.mlir.constant(0 : index) : i64
    %551 = llvm.insertvalue %550, %549[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %552 = llvm.insertvalue %525, %551[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %553 = llvm.insertvalue %526, %552[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %554 = llvm.insertvalue %527, %553[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %555 = llvm.insertvalue %528, %554[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %556 = llvm.insertvalue %531, %555[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %557 = llvm.insertvalue %530, %556[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %558 = llvm.insertvalue %528, %557[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %559 = llvm.insertvalue %529, %558[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %560 = llvm.mlir.constant(0 : index) : i64
    %561 = llvm.mlir.constant(1 : index) : i64
    %562 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb73(%560 : i64)
  ^bb73(%563: i64):  // 2 preds: ^bb72, ^bb83
    %564 = llvm.icmp "slt" %563, %561 : i64
    llvm.cond_br %564, ^bb74, ^bb84
  ^bb74:  // pred: ^bb73
    %565 = llvm.mlir.constant(0 : index) : i64
    %566 = llvm.mlir.constant(1 : index) : i64
    %567 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb75(%565 : i64)
  ^bb75(%568: i64):  // 2 preds: ^bb74, ^bb82
    %569 = llvm.icmp "slt" %568, %566 : i64
    llvm.cond_br %569, ^bb76, ^bb83
  ^bb76:  // pred: ^bb75
    %570 = llvm.mlir.constant(0 : index) : i64
    %571 = llvm.mlir.constant(1 : index) : i64
    %572 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb77(%570 : i64)
  ^bb77(%573: i64):  // 2 preds: ^bb76, ^bb81
    %574 = llvm.icmp "slt" %573, %571 : i64
    llvm.cond_br %574, ^bb78, ^bb82
  ^bb78:  // pred: ^bb77
    %575 = llvm.mlir.constant(0 : index) : i64
    %576 = llvm.mlir.constant(4 : index) : i64
    %577 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb79(%575 : i64)
  ^bb79(%578: i64):  // 2 preds: ^bb78, ^bb80
    %579 = llvm.icmp "slt" %578, %576 : i64
    llvm.cond_br %579, ^bb80, ^bb81
  ^bb80:  // pred: ^bb79
    %580 = llvm.extractvalue %125[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %581 = llvm.mlir.constant(4 : index) : i64
    %582 = llvm.mul %563, %581  : i64
    %583 = llvm.mlir.constant(4 : index) : i64
    %584 = llvm.mul %568, %583  : i64
    %585 = llvm.add %582, %584  : i64
    %586 = llvm.mlir.constant(4 : index) : i64
    %587 = llvm.mul %573, %586  : i64
    %588 = llvm.add %585, %587  : i64
    %589 = llvm.add %588, %578  : i64
    %590 = llvm.getelementptr %580[%589] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %591 = llvm.load %590 : !llvm.ptr<i32>
    %592 = llvm.mlir.constant(false) : i1
    %593 = "llvm.intr.abs"(%591, %592) : (i32, i1) -> i32
    %594 = llvm.extractvalue %559[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %595 = llvm.mlir.constant(4 : index) : i64
    %596 = llvm.mul %563, %595  : i64
    %597 = llvm.mlir.constant(4 : index) : i64
    %598 = llvm.mul %568, %597  : i64
    %599 = llvm.add %596, %598  : i64
    %600 = llvm.mlir.constant(4 : index) : i64
    %601 = llvm.mul %573, %600  : i64
    %602 = llvm.add %599, %601  : i64
    %603 = llvm.add %602, %578  : i64
    %604 = llvm.getelementptr %594[%603] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %593, %604 : !llvm.ptr<i32>
    %605 = llvm.add %578, %577  : i64
    llvm.br ^bb79(%605 : i64)
  ^bb81:  // pred: ^bb79
    %606 = llvm.add %573, %572  : i64
    llvm.br ^bb77(%606 : i64)
  ^bb82:  // pred: ^bb77
    %607 = llvm.add %568, %567  : i64
    llvm.br ^bb75(%607 : i64)
  ^bb83:  // pred: ^bb75
    %608 = llvm.add %563, %562  : i64
    llvm.br ^bb73(%608 : i64)
  ^bb84:  // pred: ^bb73
    %609 = llvm.mlir.constant(1 : index) : i64
    %610 = llvm.mlir.constant(1 : index) : i64
    %611 = llvm.mlir.constant(4 : index) : i64
    %612 = llvm.mlir.constant(1 : index) : i64
    %613 = llvm.mlir.constant(4 : index) : i64
    %614 = llvm.mlir.constant(4 : index) : i64
    %615 = llvm.mlir.null : !llvm.ptr<i64>
    %616 = llvm.getelementptr %615[%614] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %617 = llvm.ptrtoint %616 : !llvm.ptr<i64> to i64
    %618 = llvm.mlir.constant(16 : index) : i64
    %619 = llvm.add %617, %618  : i64
    %620 = llvm.call @malloc(%619) : (i64) -> !llvm.ptr<i8>
    %621 = llvm.bitcast %620 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %622 = llvm.ptrtoint %621 : !llvm.ptr<i64> to i64
    %623 = llvm.mlir.constant(1 : index) : i64
    %624 = llvm.sub %618, %623  : i64
    %625 = llvm.add %622, %624  : i64
    %626 = llvm.urem %625, %618  : i64
    %627 = llvm.sub %625, %626  : i64
    %628 = llvm.inttoptr %627 : i64 to !llvm.ptr<i64>
    %629 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>
    %630 = llvm.insertvalue %621, %629[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %631 = llvm.insertvalue %628, %630[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %632 = llvm.mlir.constant(0 : index) : i64
    %633 = llvm.insertvalue %632, %631[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %634 = llvm.insertvalue %609, %633[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %635 = llvm.insertvalue %610, %634[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %636 = llvm.insertvalue %611, %635[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %637 = llvm.insertvalue %613, %636[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %638 = llvm.insertvalue %611, %637[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %639 = llvm.insertvalue %612, %638[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %640 = llvm.mlir.constant(0 : index) : i64
    %641 = llvm.mlir.constant(1 : index) : i64
    %642 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb85(%640 : i64)
  ^bb85(%643: i64):  // 2 preds: ^bb84, ^bb92
    %644 = llvm.icmp "slt" %643, %641 : i64
    llvm.cond_br %644, ^bb86, ^bb93
  ^bb86:  // pred: ^bb85
    %645 = llvm.mlir.constant(0 : index) : i64
    %646 = llvm.mlir.constant(1 : index) : i64
    %647 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb87(%645 : i64)
  ^bb87(%648: i64):  // 2 preds: ^bb86, ^bb91
    %649 = llvm.icmp "slt" %648, %646 : i64
    llvm.cond_br %649, ^bb88, ^bb92
  ^bb88:  // pred: ^bb87
    %650 = llvm.mlir.constant(0 : index) : i64
    %651 = llvm.mlir.constant(4 : index) : i64
    %652 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb89(%650 : i64)
  ^bb89(%653: i64):  // 2 preds: ^bb88, ^bb90
    %654 = llvm.icmp "slt" %653, %651 : i64
    llvm.cond_br %654, ^bb90, ^bb91
  ^bb90:  // pred: ^bb89
    %655 = llvm.extractvalue %639[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %656 = llvm.mlir.constant(4 : index) : i64
    %657 = llvm.mul %643, %656  : i64
    %658 = llvm.mlir.constant(4 : index) : i64
    %659 = llvm.mul %648, %658  : i64
    %660 = llvm.add %657, %659  : i64
    %661 = llvm.add %660, %653  : i64
    %662 = llvm.getelementptr %655[%661] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %13, %662 : !llvm.ptr<i64>
    %663 = llvm.add %653, %652  : i64
    llvm.br ^bb89(%663 : i64)
  ^bb91:  // pred: ^bb89
    %664 = llvm.add %648, %647  : i64
    llvm.br ^bb87(%664 : i64)
  ^bb92:  // pred: ^bb87
    %665 = llvm.add %643, %642  : i64
    llvm.br ^bb85(%665 : i64)
  ^bb93:  // pred: ^bb85
    %666 = llvm.mlir.constant(0 : index) : i64
    %667 = llvm.mlir.constant(1 : index) : i64
    %668 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb94(%666 : i64)
  ^bb94(%669: i64):  // 2 preds: ^bb93, ^bb104
    %670 = llvm.icmp "slt" %669, %667 : i64
    llvm.cond_br %670, ^bb95, ^bb105
  ^bb95:  // pred: ^bb94
    %671 = llvm.mlir.constant(0 : index) : i64
    %672 = llvm.mlir.constant(1 : index) : i64
    %673 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb96(%671 : i64)
  ^bb96(%674: i64):  // 2 preds: ^bb95, ^bb103
    %675 = llvm.icmp "slt" %674, %672 : i64
    llvm.cond_br %675, ^bb97, ^bb104
  ^bb97:  // pred: ^bb96
    %676 = llvm.mlir.constant(0 : index) : i64
    %677 = llvm.mlir.constant(1 : index) : i64
    %678 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb98(%676 : i64)
  ^bb98(%679: i64):  // 2 preds: ^bb97, ^bb102
    %680 = llvm.icmp "slt" %679, %677 : i64
    llvm.cond_br %680, ^bb99, ^bb103
  ^bb99:  // pred: ^bb98
    %681 = llvm.mlir.constant(0 : index) : i64
    %682 = llvm.mlir.constant(4 : index) : i64
    %683 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb100(%681 : i64)
  ^bb100(%684: i64):  // 2 preds: ^bb99, ^bb101
    %685 = llvm.icmp "slt" %684, %682 : i64
    llvm.cond_br %685, ^bb101, ^bb102
  ^bb101:  // pred: ^bb100
    %686 = llvm.extractvalue %559[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %687 = llvm.mlir.constant(4 : index) : i64
    %688 = llvm.mul %669, %687  : i64
    %689 = llvm.mlir.constant(4 : index) : i64
    %690 = llvm.mul %674, %689  : i64
    %691 = llvm.add %688, %690  : i64
    %692 = llvm.mlir.constant(4 : index) : i64
    %693 = llvm.mul %679, %692  : i64
    %694 = llvm.add %691, %693  : i64
    %695 = llvm.add %694, %684  : i64
    %696 = llvm.getelementptr %686[%695] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %697 = llvm.load %696 : !llvm.ptr<i32>
    %698 = llvm.extractvalue %639[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %699 = llvm.mlir.constant(4 : index) : i64
    %700 = llvm.mul %669, %699  : i64
    %701 = llvm.mlir.constant(4 : index) : i64
    %702 = llvm.mul %674, %701  : i64
    %703 = llvm.add %700, %702  : i64
    %704 = llvm.add %703, %684  : i64
    %705 = llvm.getelementptr %698[%704] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %706 = llvm.load %705 : !llvm.ptr<i64>
    %707 = llvm.icmp "slt" %706, %12 : i64
    %708 = llvm.select %707, %12, %706 : i1, i64
    %709 = llvm.extractvalue %559[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %710 = llvm.mlir.constant(4 : index) : i64
    %711 = llvm.mul %669, %710  : i64
    %712 = llvm.mlir.constant(4 : index) : i64
    %713 = llvm.mul %674, %712  : i64
    %714 = llvm.add %711, %713  : i64
    %715 = llvm.mlir.constant(4 : index) : i64
    %716 = llvm.mul %708, %715  : i64
    %717 = llvm.add %714, %716  : i64
    %718 = llvm.add %717, %684  : i64
    %719 = llvm.getelementptr %709[%718] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %720 = llvm.load %719 : !llvm.ptr<i32>
    %721 = llvm.icmp "sgt" %697, %720 : i32
    %722 = llvm.select %721, %679, %708 : i1, i64
    %723 = llvm.extractvalue %639[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %724 = llvm.mlir.constant(4 : index) : i64
    %725 = llvm.mul %669, %724  : i64
    %726 = llvm.mlir.constant(4 : index) : i64
    %727 = llvm.mul %674, %726  : i64
    %728 = llvm.add %725, %727  : i64
    %729 = llvm.add %728, %684  : i64
    %730 = llvm.getelementptr %723[%729] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %722, %730 : !llvm.ptr<i64>
    %731 = llvm.add %684, %683  : i64
    llvm.br ^bb100(%731 : i64)
  ^bb102:  // pred: ^bb100
    %732 = llvm.add %679, %678  : i64
    llvm.br ^bb98(%732 : i64)
  ^bb103:  // pred: ^bb98
    %733 = llvm.add %674, %673  : i64
    llvm.br ^bb96(%733 : i64)
  ^bb104:  // pred: ^bb96
    %734 = llvm.add %669, %668  : i64
    llvm.br ^bb94(%734 : i64)
  ^bb105:  // pred: ^bb94
    %735 = llvm.mlir.constant(1 : index) : i64
    %736 = llvm.mlir.constant(1 : index) : i64
    %737 = llvm.mlir.constant(1 : index) : i64
    %738 = llvm.mlir.null : !llvm.ptr<i64>
    %739 = llvm.getelementptr %738[%735] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %740 = llvm.ptrtoint %739 : !llvm.ptr<i64> to i64
    %741 = llvm.mlir.constant(16 : index) : i64
    %742 = llvm.add %740, %741  : i64
    %743 = llvm.call @malloc(%742) : (i64) -> !llvm.ptr<i8>
    %744 = llvm.bitcast %743 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %745 = llvm.ptrtoint %744 : !llvm.ptr<i64> to i64
    %746 = llvm.mlir.constant(1 : index) : i64
    %747 = llvm.sub %741, %746  : i64
    %748 = llvm.add %745, %747  : i64
    %749 = llvm.urem %748, %741  : i64
    %750 = llvm.sub %748, %749  : i64
    %751 = llvm.inttoptr %750 : i64 to !llvm.ptr<i64>
    %752 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>
    %753 = llvm.insertvalue %744, %752[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %754 = llvm.insertvalue %751, %753[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %755 = llvm.mlir.constant(0 : index) : i64
    %756 = llvm.insertvalue %755, %754[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %757 = llvm.insertvalue %735, %756[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %758 = llvm.insertvalue %736, %757[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %759 = llvm.insertvalue %736, %758[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %760 = llvm.insertvalue %737, %759[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %761 = llvm.mlir.constant(0 : index) : i64
    %762 = llvm.mlir.constant(1 : index) : i64
    %763 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb106(%761 : i64)
  ^bb106(%764: i64):  // 2 preds: ^bb105, ^bb110
    %765 = llvm.icmp "slt" %764, %762 : i64
    llvm.cond_br %765, ^bb107, ^bb111
  ^bb107:  // pred: ^bb106
    %766 = llvm.mlir.constant(0 : index) : i64
    %767 = llvm.mlir.constant(1 : index) : i64
    %768 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb108(%766 : i64)
  ^bb108(%769: i64):  // 2 preds: ^bb107, ^bb109
    %770 = llvm.icmp "slt" %769, %767 : i64
    llvm.cond_br %770, ^bb109, ^bb110
  ^bb109:  // pred: ^bb108
    %771 = llvm.extractvalue %760[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %772 = llvm.add %764, %769  : i64
    %773 = llvm.getelementptr %771[%772] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %12, %773 : !llvm.ptr<i64>
    %774 = llvm.add %769, %768  : i64
    llvm.br ^bb108(%774 : i64)
  ^bb110:  // pred: ^bb108
    %775 = llvm.add %764, %763  : i64
    llvm.br ^bb106(%775 : i64)
  ^bb111:  // pred: ^bb106
    %776 = llvm.mlir.constant(0 : index) : i64
    %777 = llvm.mlir.constant(1 : index) : i64
    %778 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb112(%776 : i64)
  ^bb112(%779: i64):  // 2 preds: ^bb111, ^bb119
    %780 = llvm.icmp "slt" %779, %777 : i64
    llvm.cond_br %780, ^bb113, ^bb120
  ^bb113:  // pred: ^bb112
    %781 = llvm.mlir.constant(0 : index) : i64
    %782 = llvm.mlir.constant(1 : index) : i64
    %783 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb114(%781 : i64)
  ^bb114(%784: i64):  // 2 preds: ^bb113, ^bb118
    %785 = llvm.icmp "slt" %784, %782 : i64
    llvm.cond_br %785, ^bb115, ^bb119
  ^bb115:  // pred: ^bb114
    %786 = llvm.mlir.constant(0 : index) : i64
    %787 = llvm.mlir.constant(4 : index) : i64
    %788 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb116(%786 : i64)
  ^bb116(%789: i64):  // 2 preds: ^bb115, ^bb117
    %790 = llvm.icmp "slt" %789, %787 : i64
    llvm.cond_br %790, ^bb117, ^bb118
  ^bb117:  // pred: ^bb116
    %791 = llvm.extractvalue %639[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %792 = llvm.mlir.constant(4 : index) : i64
    %793 = llvm.mul %779, %792  : i64
    %794 = llvm.mlir.constant(4 : index) : i64
    %795 = llvm.mul %784, %794  : i64
    %796 = llvm.add %793, %795  : i64
    %797 = llvm.add %796, %789  : i64
    %798 = llvm.getelementptr %791[%797] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %799 = llvm.load %798 : !llvm.ptr<i64>
    %800 = llvm.extractvalue %760[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %801 = llvm.add %779, %784  : i64
    %802 = llvm.getelementptr %800[%801] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %803 = llvm.load %802 : !llvm.ptr<i64>
    %804 = llvm.add %803, %799  : i64
    %805 = llvm.extractvalue %760[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %806 = llvm.add %779, %784  : i64
    %807 = llvm.getelementptr %805[%806] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %804, %807 : !llvm.ptr<i64>
    %808 = llvm.add %789, %788  : i64
    llvm.br ^bb116(%808 : i64)
  ^bb118:  // pred: ^bb116
    %809 = llvm.add %784, %783  : i64
    llvm.br ^bb114(%809 : i64)
  ^bb119:  // pred: ^bb114
    %810 = llvm.add %779, %778  : i64
    llvm.br ^bb112(%810 : i64)
  ^bb120:  // pred: ^bb112
    %811 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>)>
    %812 = llvm.insertvalue %477, %811[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>)> 
    %813 = llvm.insertvalue %760, %812[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>)> 
    llvm.return %813 : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) attributes {input_names = ["v5_0"], llvm.emit_c_interface, output_names = ["v3_0", "v4_0"]} {
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
    %12 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>)>
    llvm.store %12, %arg0 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>)>>
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
    llvm.call @_mlir_ciface_main_graph(%2, %6) : (!llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) -> ()
    %44 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>)>>
    %45 = llvm.extractvalue %44[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>)> 
    %46 = llvm.extractvalue %44[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>)> 
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
    %83 = llvm.mlir.constant(2 : i64) : i64
    %84 = llvm.call @omTensorCreateUntyped(%83) : (i64) -> !llvm.ptr<i8>
    %85 = llvm.mlir.constant(1 : i64) : i64
    %86 = llvm.extractvalue %46[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %87 = llvm.bitcast %86 : !llvm.ptr<i64> to !llvm.ptr<i8>
    %88 = llvm.extractvalue %46[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %89 = llvm.bitcast %88 : !llvm.ptr<i64> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%84, %85, %87, %89) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %90 = llvm.mlir.constant(7 : i64) : i64
    llvm.call @omTensorSetDataType(%84, %90) : (!llvm.ptr<i8>, i64) -> ()
    %91 = llvm.call @omTensorGetShape(%84) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %92 = llvm.call @omTensorGetStrides(%84) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %93 = llvm.mlir.constant(0 : i64) : i64
    %94 = llvm.extractvalue %46[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %95 = llvm.getelementptr %91[%93] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %94, %95 : !llvm.ptr<i64>
    %96 = llvm.extractvalue %46[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %97 = llvm.getelementptr %92[%93] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %96, %97 : !llvm.ptr<i64>
    %98 = llvm.mlir.constant(1 : i64) : i64
    %99 = llvm.extractvalue %46[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %100 = llvm.getelementptr %91[%98] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %99, %100 : !llvm.ptr<i64>
    %101 = llvm.extractvalue %46[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %102 = llvm.getelementptr %92[%98] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %101, %102 : !llvm.ptr<i64>
    %103 = llvm.mlir.constant(1 : i64) : i64
    %104 = llvm.getelementptr %50[%103] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %84, %104 : !llvm.ptr<ptr<i8>>
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

