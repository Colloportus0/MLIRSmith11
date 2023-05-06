module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v5_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 2] , \22name\22 : \22v4_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 2] , \22name\22 : \22v2_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.mlir.global internal constant @constant_8(dense<4> : tensor<1x1x1x1xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x array<1 x array<1 x array<1 x i32>>>>
  llvm.mlir.global internal constant @constant_3(dense<[1, 1, 1, 2]> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.mlir.global internal constant @constant_2(dense<-1> : tensor<i64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i64>
  llvm.mlir.global internal constant @constant_1(dense<[1, 1, 1, 2]> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> attributes {input_names = ["v5_0"], llvm.emit_c_interface, output_names = ["v4_0", "v2_0"]} {
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
    %12 = llvm.mlir.constant(0 : i32) : i32
    %13 = llvm.mlir.constant(1 : i64) : i64
    %14 = llvm.mlir.constant(0 : index) : i64
    %15 = llvm.mlir.addressof @constant_1 : !llvm.ptr<array<4 x i64>>
    %16 = llvm.bitcast %15 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %17 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %18 = llvm.insertvalue %16, %17[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %19 = llvm.insertvalue %16, %18[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %20 = llvm.mlir.constant(0 : index) : i64
    %21 = llvm.insertvalue %20, %19[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %22 = llvm.mlir.constant(4 : index) : i64
    %23 = llvm.insertvalue %22, %21[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %24 = llvm.mlir.constant(1 : index) : i64
    %25 = llvm.insertvalue %24, %23[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %26 = llvm.mlir.addressof @constant_2 : !llvm.ptr<array<1 x i64>>
    %27 = llvm.bitcast %26 : !llvm.ptr<array<1 x i64>> to !llvm.ptr<i64>
    %28 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64)>
    %29 = llvm.insertvalue %27, %28[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %30 = llvm.insertvalue %27, %29[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %31 = llvm.mlir.constant(0 : index) : i64
    %32 = llvm.insertvalue %31, %30[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %33 = llvm.mlir.addressof @constant_3 : !llvm.ptr<array<4 x i64>>
    %34 = llvm.bitcast %33 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %35 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %36 = llvm.insertvalue %34, %35[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %37 = llvm.insertvalue %34, %36[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %38 = llvm.mlir.constant(0 : index) : i64
    %39 = llvm.insertvalue %38, %37[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %40 = llvm.mlir.constant(4 : index) : i64
    %41 = llvm.insertvalue %40, %39[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %42 = llvm.mlir.constant(1 : index) : i64
    %43 = llvm.insertvalue %42, %41[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %44 = llvm.mlir.addressof @constant_8 : !llvm.ptr<array<1 x array<1 x array<1 x array<1 x i32>>>>>
    %45 = llvm.bitcast %44 : !llvm.ptr<array<1 x array<1 x array<1 x array<1 x i32>>>>> to !llvm.ptr<i32>
    %46 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %47 = llvm.insertvalue %45, %46[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %48 = llvm.insertvalue %45, %47[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %49 = llvm.mlir.constant(0 : index) : i64
    %50 = llvm.insertvalue %49, %48[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %51 = llvm.mlir.constant(1 : index) : i64
    %52 = llvm.insertvalue %51, %50[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %53 = llvm.mlir.constant(1 : index) : i64
    %54 = llvm.insertvalue %53, %52[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %55 = llvm.mlir.constant(1 : index) : i64
    %56 = llvm.insertvalue %55, %54[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %57 = llvm.mlir.constant(1 : index) : i64
    %58 = llvm.insertvalue %57, %56[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %59 = llvm.mlir.constant(1 : index) : i64
    %60 = llvm.insertvalue %59, %58[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %61 = llvm.mlir.constant(1 : index) : i64
    %62 = llvm.insertvalue %61, %60[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %63 = llvm.mlir.constant(1 : index) : i64
    %64 = llvm.insertvalue %63, %62[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %65 = llvm.mlir.constant(1 : index) : i64
    %66 = llvm.insertvalue %65, %64[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %67 = llvm.mlir.constant(1 : index) : i64
    %68 = llvm.mlir.constant(1 : index) : i64
    %69 = llvm.mlir.constant(1 : index) : i64
    %70 = llvm.mlir.constant(2 : index) : i64
    %71 = llvm.mlir.constant(1 : index) : i64
    %72 = llvm.mlir.constant(2 : index) : i64
    %73 = llvm.mlir.constant(2 : index) : i64
    %74 = llvm.mlir.constant(2 : index) : i64
    %75 = llvm.mlir.null : !llvm.ptr<i32>
    %76 = llvm.getelementptr %75[%74] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %77 = llvm.ptrtoint %76 : !llvm.ptr<i32> to i64
    %78 = llvm.mlir.constant(16 : index) : i64
    %79 = llvm.add %77, %78  : i64
    %80 = llvm.call @malloc(%79) : (i64) -> !llvm.ptr<i8>
    %81 = llvm.bitcast %80 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %82 = llvm.ptrtoint %81 : !llvm.ptr<i32> to i64
    %83 = llvm.mlir.constant(1 : index) : i64
    %84 = llvm.sub %78, %83  : i64
    %85 = llvm.add %82, %84  : i64
    %86 = llvm.urem %85, %78  : i64
    %87 = llvm.sub %85, %86  : i64
    %88 = llvm.inttoptr %87 : i64 to !llvm.ptr<i32>
    %89 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %90 = llvm.insertvalue %81, %89[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %91 = llvm.insertvalue %88, %90[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %92 = llvm.mlir.constant(0 : index) : i64
    %93 = llvm.insertvalue %92, %91[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %94 = llvm.insertvalue %67, %93[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %95 = llvm.insertvalue %68, %94[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %96 = llvm.insertvalue %69, %95[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %97 = llvm.insertvalue %70, %96[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %98 = llvm.insertvalue %73, %97[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %99 = llvm.insertvalue %72, %98[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %100 = llvm.insertvalue %70, %99[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %101 = llvm.insertvalue %71, %100[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %102 = llvm.mlir.constant(0 : index) : i64
    %103 = llvm.mlir.constant(1 : index) : i64
    %104 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%102 : i64)
  ^bb1(%105: i64):  // 2 preds: ^bb0, ^bb11
    %106 = llvm.icmp "slt" %105, %103 : i64
    llvm.cond_br %106, ^bb2, ^bb12
  ^bb2:  // pred: ^bb1
    %107 = llvm.mlir.constant(0 : index) : i64
    %108 = llvm.mlir.constant(1 : index) : i64
    %109 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%107 : i64)
  ^bb3(%110: i64):  // 2 preds: ^bb2, ^bb10
    %111 = llvm.icmp "slt" %110, %108 : i64
    llvm.cond_br %111, ^bb4, ^bb11
  ^bb4:  // pred: ^bb3
    %112 = llvm.mlir.constant(0 : index) : i64
    %113 = llvm.mlir.constant(1 : index) : i64
    %114 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%112 : i64)
  ^bb5(%115: i64):  // 2 preds: ^bb4, ^bb9
    %116 = llvm.icmp "slt" %115, %113 : i64
    llvm.cond_br %116, ^bb6, ^bb10
  ^bb6:  // pred: ^bb5
    %117 = llvm.mlir.constant(0 : index) : i64
    %118 = llvm.mlir.constant(1 : index) : i64
    %119 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%117 : i64)
  ^bb7(%120: i64):  // 2 preds: ^bb6, ^bb8
    %121 = llvm.icmp "slt" %120, %118 : i64
    llvm.cond_br %121, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %122 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %123 = llvm.add %105, %110  : i64
    %124 = llvm.add %123, %115  : i64
    %125 = llvm.add %124, %120  : i64
    %126 = llvm.getelementptr %122[%125] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %127 = llvm.load %126 : !llvm.ptr<i32>
    %128 = llvm.extractvalue %101[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %129 = llvm.mlir.constant(2 : index) : i64
    %130 = llvm.mul %105, %129  : i64
    %131 = llvm.mlir.constant(2 : index) : i64
    %132 = llvm.mul %110, %131  : i64
    %133 = llvm.add %130, %132  : i64
    %134 = llvm.mlir.constant(2 : index) : i64
    %135 = llvm.mul %115, %134  : i64
    %136 = llvm.add %133, %135  : i64
    %137 = llvm.add %136, %120  : i64
    %138 = llvm.getelementptr %128[%137] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %127, %138 : !llvm.ptr<i32>
    %139 = llvm.add %120, %119  : i64
    llvm.br ^bb7(%139 : i64)
  ^bb9:  // pred: ^bb7
    %140 = llvm.add %115, %114  : i64
    llvm.br ^bb5(%140 : i64)
  ^bb10:  // pred: ^bb5
    %141 = llvm.add %110, %109  : i64
    llvm.br ^bb3(%141 : i64)
  ^bb11:  // pred: ^bb3
    %142 = llvm.add %105, %104  : i64
    llvm.br ^bb1(%142 : i64)
  ^bb12:  // pred: ^bb1
    %143 = llvm.mlir.constant(0 : index) : i64
    %144 = llvm.mlir.constant(1 : index) : i64
    %145 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%143 : i64)
  ^bb13(%146: i64):  // 2 preds: ^bb12, ^bb23
    %147 = llvm.icmp "slt" %146, %144 : i64
    llvm.cond_br %147, ^bb14, ^bb24
  ^bb14:  // pred: ^bb13
    %148 = llvm.mlir.constant(0 : index) : i64
    %149 = llvm.mlir.constant(1 : index) : i64
    %150 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb15(%148 : i64)
  ^bb15(%151: i64):  // 2 preds: ^bb14, ^bb22
    %152 = llvm.icmp "slt" %151, %149 : i64
    llvm.cond_br %152, ^bb16, ^bb23
  ^bb16:  // pred: ^bb15
    %153 = llvm.mlir.constant(0 : index) : i64
    %154 = llvm.mlir.constant(1 : index) : i64
    %155 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb17(%153 : i64)
  ^bb17(%156: i64):  // 2 preds: ^bb16, ^bb21
    %157 = llvm.icmp "slt" %156, %154 : i64
    llvm.cond_br %157, ^bb18, ^bb22
  ^bb18:  // pred: ^bb17
    %158 = llvm.mlir.constant(0 : index) : i64
    %159 = llvm.mlir.constant(1 : index) : i64
    %160 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%158 : i64)
  ^bb19(%161: i64):  // 2 preds: ^bb18, ^bb20
    %162 = llvm.icmp "slt" %161, %159 : i64
    llvm.cond_br %162, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %163 = llvm.mlir.constant(1 : index) : i64
    %164 = llvm.add %161, %163  : i64
    %165 = llvm.extractvalue %66[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %166 = llvm.add %146, %151  : i64
    %167 = llvm.add %166, %156  : i64
    %168 = llvm.add %167, %161  : i64
    %169 = llvm.getelementptr %165[%168] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %170 = llvm.load %169 : !llvm.ptr<i32>
    %171 = llvm.extractvalue %101[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %172 = llvm.mlir.constant(2 : index) : i64
    %173 = llvm.mul %146, %172  : i64
    %174 = llvm.mlir.constant(2 : index) : i64
    %175 = llvm.mul %151, %174  : i64
    %176 = llvm.add %173, %175  : i64
    %177 = llvm.mlir.constant(2 : index) : i64
    %178 = llvm.mul %156, %177  : i64
    %179 = llvm.add %176, %178  : i64
    %180 = llvm.add %179, %164  : i64
    %181 = llvm.getelementptr %171[%180] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %170, %181 : !llvm.ptr<i32>
    %182 = llvm.add %161, %160  : i64
    llvm.br ^bb19(%182 : i64)
  ^bb21:  // pred: ^bb19
    %183 = llvm.add %156, %155  : i64
    llvm.br ^bb17(%183 : i64)
  ^bb22:  // pred: ^bb17
    %184 = llvm.add %151, %150  : i64
    llvm.br ^bb15(%184 : i64)
  ^bb23:  // pred: ^bb15
    %185 = llvm.add %146, %145  : i64
    llvm.br ^bb13(%185 : i64)
  ^bb24:  // pred: ^bb13
    %186 = llvm.mlir.constant(1 : index) : i64
    %187 = llvm.mlir.constant(1 : index) : i64
    %188 = llvm.mlir.constant(1 : index) : i64
    %189 = llvm.mlir.constant(2 : index) : i64
    %190 = llvm.mlir.constant(1 : index) : i64
    %191 = llvm.mlir.constant(2 : index) : i64
    %192 = llvm.mlir.constant(2 : index) : i64
    %193 = llvm.mlir.constant(2 : index) : i64
    %194 = llvm.mlir.null : !llvm.ptr<i32>
    %195 = llvm.getelementptr %194[%193] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %196 = llvm.ptrtoint %195 : !llvm.ptr<i32> to i64
    %197 = llvm.mlir.constant(16 : index) : i64
    %198 = llvm.add %196, %197  : i64
    %199 = llvm.call @malloc(%198) : (i64) -> !llvm.ptr<i8>
    %200 = llvm.bitcast %199 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %201 = llvm.ptrtoint %200 : !llvm.ptr<i32> to i64
    %202 = llvm.mlir.constant(1 : index) : i64
    %203 = llvm.sub %197, %202  : i64
    %204 = llvm.add %201, %203  : i64
    %205 = llvm.urem %204, %197  : i64
    %206 = llvm.sub %204, %205  : i64
    %207 = llvm.inttoptr %206 : i64 to !llvm.ptr<i32>
    %208 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %209 = llvm.insertvalue %200, %208[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %210 = llvm.insertvalue %207, %209[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %211 = llvm.mlir.constant(0 : index) : i64
    %212 = llvm.insertvalue %211, %210[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %213 = llvm.insertvalue %186, %212[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %214 = llvm.insertvalue %187, %213[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %215 = llvm.insertvalue %188, %214[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %216 = llvm.insertvalue %189, %215[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %217 = llvm.insertvalue %192, %216[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %218 = llvm.insertvalue %191, %217[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %219 = llvm.insertvalue %189, %218[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %220 = llvm.insertvalue %190, %219[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %221 = llvm.mlir.constant(0 : index) : i64
    %222 = llvm.mlir.constant(1 : index) : i64
    %223 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb25(%221 : i64)
  ^bb25(%224: i64):  // 2 preds: ^bb24, ^bb35
    %225 = llvm.icmp "slt" %224, %222 : i64
    llvm.cond_br %225, ^bb26, ^bb36
  ^bb26:  // pred: ^bb25
    %226 = llvm.mlir.constant(0 : index) : i64
    %227 = llvm.mlir.constant(1 : index) : i64
    %228 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb27(%226 : i64)
  ^bb27(%229: i64):  // 2 preds: ^bb26, ^bb34
    %230 = llvm.icmp "slt" %229, %227 : i64
    llvm.cond_br %230, ^bb28, ^bb35
  ^bb28:  // pred: ^bb27
    %231 = llvm.mlir.constant(0 : index) : i64
    %232 = llvm.mlir.constant(1 : index) : i64
    %233 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb29(%231 : i64)
  ^bb29(%234: i64):  // 2 preds: ^bb28, ^bb33
    %235 = llvm.icmp "slt" %234, %232 : i64
    llvm.cond_br %235, ^bb30, ^bb34
  ^bb30:  // pred: ^bb29
    %236 = llvm.mlir.constant(0 : index) : i64
    %237 = llvm.mlir.constant(2 : index) : i64
    %238 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb31(%236 : i64)
  ^bb31(%239: i64):  // 2 preds: ^bb30, ^bb32
    %240 = llvm.icmp "slt" %239, %237 : i64
    llvm.cond_br %240, ^bb32, ^bb33
  ^bb32:  // pred: ^bb31
    %241 = llvm.extractvalue %101[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %242 = llvm.mlir.constant(2 : index) : i64
    %243 = llvm.mul %224, %242  : i64
    %244 = llvm.mlir.constant(2 : index) : i64
    %245 = llvm.mul %229, %244  : i64
    %246 = llvm.add %243, %245  : i64
    %247 = llvm.mlir.constant(2 : index) : i64
    %248 = llvm.mul %234, %247  : i64
    %249 = llvm.add %246, %248  : i64
    %250 = llvm.add %249, %239  : i64
    %251 = llvm.getelementptr %241[%250] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %252 = llvm.load %251 : !llvm.ptr<i32>
    %253 = llvm.extractvalue %220[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %254 = llvm.mlir.constant(2 : index) : i64
    %255 = llvm.mul %224, %254  : i64
    %256 = llvm.mlir.constant(2 : index) : i64
    %257 = llvm.mul %229, %256  : i64
    %258 = llvm.add %255, %257  : i64
    %259 = llvm.mlir.constant(2 : index) : i64
    %260 = llvm.mul %234, %259  : i64
    %261 = llvm.add %258, %260  : i64
    %262 = llvm.add %261, %239  : i64
    %263 = llvm.getelementptr %253[%262] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %252, %263 : !llvm.ptr<i32>
    %264 = llvm.add %239, %238  : i64
    llvm.br ^bb31(%264 : i64)
  ^bb33:  // pred: ^bb31
    %265 = llvm.add %234, %233  : i64
    llvm.br ^bb29(%265 : i64)
  ^bb34:  // pred: ^bb29
    %266 = llvm.add %229, %228  : i64
    llvm.br ^bb27(%266 : i64)
  ^bb35:  // pred: ^bb27
    %267 = llvm.add %224, %223  : i64
    llvm.br ^bb25(%267 : i64)
  ^bb36:  // pred: ^bb25
    %268 = llvm.mlir.constant(1 : index) : i64
    %269 = llvm.mlir.constant(1 : index) : i64
    %270 = llvm.mlir.constant(1 : index) : i64
    %271 = llvm.mlir.constant(2 : index) : i64
    %272 = llvm.mlir.constant(1 : index) : i64
    %273 = llvm.mlir.constant(2 : index) : i64
    %274 = llvm.mlir.constant(2 : index) : i64
    %275 = llvm.mlir.constant(2 : index) : i64
    %276 = llvm.mlir.null : !llvm.ptr<i32>
    %277 = llvm.getelementptr %276[%275] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %278 = llvm.ptrtoint %277 : !llvm.ptr<i32> to i64
    %279 = llvm.mlir.constant(16 : index) : i64
    %280 = llvm.add %278, %279  : i64
    %281 = llvm.call @malloc(%280) : (i64) -> !llvm.ptr<i8>
    %282 = llvm.bitcast %281 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %283 = llvm.ptrtoint %282 : !llvm.ptr<i32> to i64
    %284 = llvm.mlir.constant(1 : index) : i64
    %285 = llvm.sub %279, %284  : i64
    %286 = llvm.add %283, %285  : i64
    %287 = llvm.urem %286, %279  : i64
    %288 = llvm.sub %286, %287  : i64
    %289 = llvm.inttoptr %288 : i64 to !llvm.ptr<i32>
    %290 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %291 = llvm.insertvalue %282, %290[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %292 = llvm.insertvalue %289, %291[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %293 = llvm.mlir.constant(0 : index) : i64
    %294 = llvm.insertvalue %293, %292[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %295 = llvm.insertvalue %268, %294[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %296 = llvm.insertvalue %269, %295[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %297 = llvm.insertvalue %270, %296[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %298 = llvm.insertvalue %271, %297[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %299 = llvm.insertvalue %274, %298[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %300 = llvm.insertvalue %273, %299[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %301 = llvm.insertvalue %271, %300[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %302 = llvm.insertvalue %272, %301[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %303 = llvm.mlir.constant(0 : index) : i64
    %304 = llvm.mlir.constant(1 : index) : i64
    %305 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb37(%303 : i64)
  ^bb37(%306: i64):  // 2 preds: ^bb36, ^bb47
    %307 = llvm.icmp "slt" %306, %304 : i64
    llvm.cond_br %307, ^bb38, ^bb48
  ^bb38:  // pred: ^bb37
    %308 = llvm.mlir.constant(0 : index) : i64
    %309 = llvm.mlir.constant(1 : index) : i64
    %310 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb39(%308 : i64)
  ^bb39(%311: i64):  // 2 preds: ^bb38, ^bb46
    %312 = llvm.icmp "slt" %311, %309 : i64
    llvm.cond_br %312, ^bb40, ^bb47
  ^bb40:  // pred: ^bb39
    %313 = llvm.mlir.constant(0 : index) : i64
    %314 = llvm.mlir.constant(1 : index) : i64
    %315 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb41(%313 : i64)
  ^bb41(%316: i64):  // 2 preds: ^bb40, ^bb45
    %317 = llvm.icmp "slt" %316, %314 : i64
    llvm.cond_br %317, ^bb42, ^bb46
  ^bb42:  // pred: ^bb41
    %318 = llvm.mlir.constant(0 : index) : i64
    %319 = llvm.mlir.constant(2 : index) : i64
    %320 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb43(%318 : i64)
  ^bb43(%321: i64):  // 2 preds: ^bb42, ^bb44
    %322 = llvm.icmp "slt" %321, %319 : i64
    llvm.cond_br %322, ^bb44, ^bb45
  ^bb44:  // pred: ^bb43
    %323 = llvm.extractvalue %220[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %324 = llvm.mlir.constant(2 : index) : i64
    %325 = llvm.mul %306, %324  : i64
    %326 = llvm.mlir.constant(2 : index) : i64
    %327 = llvm.mul %311, %326  : i64
    %328 = llvm.add %325, %327  : i64
    %329 = llvm.mlir.constant(2 : index) : i64
    %330 = llvm.mul %316, %329  : i64
    %331 = llvm.add %328, %330  : i64
    %332 = llvm.add %331, %321  : i64
    %333 = llvm.getelementptr %323[%332] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %334 = llvm.load %333 : !llvm.ptr<i32>
    %335 = llvm.mlir.constant(false) : i1
    %336 = "llvm.intr.abs"(%334, %335) : (i32, i1) -> i32
    %337 = llvm.extractvalue %302[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %338 = llvm.mlir.constant(2 : index) : i64
    %339 = llvm.mul %306, %338  : i64
    %340 = llvm.mlir.constant(2 : index) : i64
    %341 = llvm.mul %311, %340  : i64
    %342 = llvm.add %339, %341  : i64
    %343 = llvm.mlir.constant(2 : index) : i64
    %344 = llvm.mul %316, %343  : i64
    %345 = llvm.add %342, %344  : i64
    %346 = llvm.add %345, %321  : i64
    %347 = llvm.getelementptr %337[%346] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %336, %347 : !llvm.ptr<i32>
    %348 = llvm.add %321, %320  : i64
    llvm.br ^bb43(%348 : i64)
  ^bb45:  // pred: ^bb43
    %349 = llvm.add %316, %315  : i64
    llvm.br ^bb41(%349 : i64)
  ^bb46:  // pred: ^bb41
    %350 = llvm.add %311, %310  : i64
    llvm.br ^bb39(%350 : i64)
  ^bb47:  // pred: ^bb39
    %351 = llvm.add %306, %305  : i64
    llvm.br ^bb37(%351 : i64)
  ^bb48:  // pred: ^bb37
    %352 = llvm.mlir.constant(4 : index) : i64
    %353 = llvm.mlir.constant(1 : index) : i64
    %354 = llvm.mlir.null : !llvm.ptr<i64>
    %355 = llvm.getelementptr %354[%352] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %356 = llvm.ptrtoint %355 : !llvm.ptr<i64> to i64
    %357 = llvm.mlir.constant(16 : index) : i64
    %358 = llvm.add %356, %357  : i64
    %359 = llvm.call @malloc(%358) : (i64) -> !llvm.ptr<i8>
    %360 = llvm.bitcast %359 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %361 = llvm.ptrtoint %360 : !llvm.ptr<i64> to i64
    %362 = llvm.mlir.constant(1 : index) : i64
    %363 = llvm.sub %357, %362  : i64
    %364 = llvm.add %361, %363  : i64
    %365 = llvm.urem %364, %357  : i64
    %366 = llvm.sub %364, %365  : i64
    %367 = llvm.inttoptr %366 : i64 to !llvm.ptr<i64>
    %368 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %369 = llvm.insertvalue %360, %368[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %370 = llvm.insertvalue %367, %369[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %371 = llvm.mlir.constant(0 : index) : i64
    %372 = llvm.insertvalue %371, %370[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %373 = llvm.insertvalue %352, %372[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %374 = llvm.insertvalue %353, %373[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %375 = llvm.mlir.constant(0 : index) : i64
    %376 = llvm.mlir.constant(4 : index) : i64
    %377 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb49(%375 : i64)
  ^bb49(%378: i64):  // 2 preds: ^bb48, ^bb50
    %379 = llvm.icmp "slt" %378, %376 : i64
    llvm.cond_br %379, ^bb50, ^bb51
  ^bb50:  // pred: ^bb49
    %380 = llvm.extractvalue %374[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %381 = llvm.getelementptr %380[%378] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %13, %381 : !llvm.ptr<i64>
    %382 = llvm.add %378, %377  : i64
    llvm.br ^bb49(%382 : i64)
  ^bb51:  // pred: ^bb49
    %383 = llvm.mlir.constant(4 : index) : i64
    %384 = llvm.mlir.constant(1 : index) : i64
    %385 = llvm.mlir.null : !llvm.ptr<i64>
    %386 = llvm.getelementptr %385[%383] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %387 = llvm.ptrtoint %386 : !llvm.ptr<i64> to i64
    %388 = llvm.mlir.constant(16 : index) : i64
    %389 = llvm.add %387, %388  : i64
    %390 = llvm.call @malloc(%389) : (i64) -> !llvm.ptr<i8>
    %391 = llvm.bitcast %390 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %392 = llvm.ptrtoint %391 : !llvm.ptr<i64> to i64
    %393 = llvm.mlir.constant(1 : index) : i64
    %394 = llvm.sub %388, %393  : i64
    %395 = llvm.add %392, %394  : i64
    %396 = llvm.urem %395, %388  : i64
    %397 = llvm.sub %395, %396  : i64
    %398 = llvm.inttoptr %397 : i64 to !llvm.ptr<i64>
    %399 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %400 = llvm.insertvalue %391, %399[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %401 = llvm.insertvalue %398, %400[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %402 = llvm.mlir.constant(0 : index) : i64
    %403 = llvm.insertvalue %402, %401[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %404 = llvm.insertvalue %383, %403[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %405 = llvm.insertvalue %384, %404[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %406 = llvm.mlir.constant(0 : index) : i64
    %407 = llvm.mlir.constant(4 : index) : i64
    %408 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb52(%406 : i64)
  ^bb52(%409: i64):  // 2 preds: ^bb51, ^bb53
    %410 = llvm.icmp "slt" %409, %407 : i64
    llvm.cond_br %410, ^bb53, ^bb54
  ^bb53:  // pred: ^bb52
    %411 = llvm.extractvalue %374[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %412 = llvm.getelementptr %411[%409] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %413 = llvm.load %412 : !llvm.ptr<i64>
    %414 = llvm.extractvalue %32[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %415 = llvm.load %414 : !llvm.ptr<i64>
    %416 = llvm.mul %413, %415  : i64
    %417 = llvm.extractvalue %405[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %418 = llvm.getelementptr %417[%409] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %416, %418 : !llvm.ptr<i64>
    %419 = llvm.add %409, %408  : i64
    llvm.br ^bb52(%419 : i64)
  ^bb54:  // pred: ^bb52
    %420 = llvm.mlir.constant(4 : index) : i64
    %421 = llvm.mlir.constant(1 : index) : i64
    %422 = llvm.mlir.null : !llvm.ptr<i1>
    %423 = llvm.getelementptr %422[%420] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %424 = llvm.ptrtoint %423 : !llvm.ptr<i1> to i64
    %425 = llvm.mlir.constant(16 : index) : i64
    %426 = llvm.add %424, %425  : i64
    %427 = llvm.call @malloc(%426) : (i64) -> !llvm.ptr<i8>
    %428 = llvm.bitcast %427 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %429 = llvm.ptrtoint %428 : !llvm.ptr<i1> to i64
    %430 = llvm.mlir.constant(1 : index) : i64
    %431 = llvm.sub %425, %430  : i64
    %432 = llvm.add %429, %431  : i64
    %433 = llvm.urem %432, %425  : i64
    %434 = llvm.sub %432, %433  : i64
    %435 = llvm.inttoptr %434 : i64 to !llvm.ptr<i1>
    %436 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %437 = llvm.insertvalue %428, %436[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %438 = llvm.insertvalue %435, %437[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %439 = llvm.mlir.constant(0 : index) : i64
    %440 = llvm.insertvalue %439, %438[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %441 = llvm.insertvalue %420, %440[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %442 = llvm.insertvalue %421, %441[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %443 = llvm.mlir.constant(0 : index) : i64
    %444 = llvm.mlir.constant(4 : index) : i64
    %445 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb55(%443 : i64)
  ^bb55(%446: i64):  // 2 preds: ^bb54, ^bb56
    %447 = llvm.icmp "slt" %446, %444 : i64
    llvm.cond_br %447, ^bb56, ^bb57
  ^bb56:  // pred: ^bb55
    %448 = llvm.extractvalue %25[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %449 = llvm.getelementptr %448[%446] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %450 = llvm.load %449 : !llvm.ptr<i64>
    %451 = llvm.extractvalue %405[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %452 = llvm.getelementptr %451[%446] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %453 = llvm.load %452 : !llvm.ptr<i64>
    %454 = llvm.icmp "eq" %450, %453 : i64
    %455 = llvm.extractvalue %442[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %456 = llvm.getelementptr %455[%446] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %454, %456 : !llvm.ptr<i1>
    %457 = llvm.add %446, %445  : i64
    llvm.br ^bb55(%457 : i64)
  ^bb57:  // pred: ^bb55
    %458 = llvm.mlir.constant(4 : index) : i64
    %459 = llvm.mlir.constant(1 : index) : i64
    %460 = llvm.mlir.null : !llvm.ptr<i64>
    %461 = llvm.getelementptr %460[%458] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %462 = llvm.ptrtoint %461 : !llvm.ptr<i64> to i64
    %463 = llvm.mlir.constant(16 : index) : i64
    %464 = llvm.add %462, %463  : i64
    %465 = llvm.call @malloc(%464) : (i64) -> !llvm.ptr<i8>
    %466 = llvm.bitcast %465 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %467 = llvm.ptrtoint %466 : !llvm.ptr<i64> to i64
    %468 = llvm.mlir.constant(1 : index) : i64
    %469 = llvm.sub %463, %468  : i64
    %470 = llvm.add %467, %469  : i64
    %471 = llvm.urem %470, %463  : i64
    %472 = llvm.sub %470, %471  : i64
    %473 = llvm.inttoptr %472 : i64 to !llvm.ptr<i64>
    %474 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %475 = llvm.insertvalue %466, %474[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %476 = llvm.insertvalue %473, %475[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %477 = llvm.mlir.constant(0 : index) : i64
    %478 = llvm.insertvalue %477, %476[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %479 = llvm.insertvalue %458, %478[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %480 = llvm.insertvalue %459, %479[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %481 = llvm.mlir.constant(0 : index) : i64
    %482 = llvm.mlir.constant(4 : index) : i64
    %483 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb58(%481 : i64)
  ^bb58(%484: i64):  // 2 preds: ^bb57, ^bb59
    %485 = llvm.icmp "slt" %484, %482 : i64
    llvm.cond_br %485, ^bb59, ^bb60
  ^bb59:  // pred: ^bb58
    %486 = llvm.extractvalue %442[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %487 = llvm.getelementptr %486[%484] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %488 = llvm.load %487 : !llvm.ptr<i1>
    %489 = llvm.extractvalue %374[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %490 = llvm.getelementptr %489[%484] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %491 = llvm.load %490 : !llvm.ptr<i64>
    %492 = llvm.extractvalue %43[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %493 = llvm.getelementptr %492[%484] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %494 = llvm.load %493 : !llvm.ptr<i64>
    %495 = llvm.select %488, %491, %494 : i1, i64
    %496 = llvm.extractvalue %480[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %497 = llvm.getelementptr %496[%484] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %495, %497 : !llvm.ptr<i64>
    %498 = llvm.add %484, %483  : i64
    llvm.br ^bb58(%498 : i64)
  ^bb60:  // pred: ^bb58
    %499 = llvm.mlir.constant(1 : index) : i64
    %500 = llvm.mlir.constant(1 : index) : i64
    %501 = llvm.mlir.constant(1 : index) : i64
    %502 = llvm.mlir.constant(2 : index) : i64
    %503 = llvm.mlir.constant(1 : index) : i64
    %504 = llvm.mlir.constant(2 : index) : i64
    %505 = llvm.mlir.constant(2 : index) : i64
    %506 = llvm.mlir.constant(2 : index) : i64
    %507 = llvm.mlir.null : !llvm.ptr<i32>
    %508 = llvm.getelementptr %507[%506] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %509 = llvm.ptrtoint %508 : !llvm.ptr<i32> to i64
    %510 = llvm.mlir.constant(16 : index) : i64
    %511 = llvm.add %509, %510  : i64
    %512 = llvm.call @malloc(%511) : (i64) -> !llvm.ptr<i8>
    %513 = llvm.bitcast %512 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %514 = llvm.ptrtoint %513 : !llvm.ptr<i32> to i64
    %515 = llvm.mlir.constant(1 : index) : i64
    %516 = llvm.sub %510, %515  : i64
    %517 = llvm.add %514, %516  : i64
    %518 = llvm.urem %517, %510  : i64
    %519 = llvm.sub %517, %518  : i64
    %520 = llvm.inttoptr %519 : i64 to !llvm.ptr<i32>
    %521 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %522 = llvm.insertvalue %513, %521[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %523 = llvm.insertvalue %520, %522[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %524 = llvm.mlir.constant(0 : index) : i64
    %525 = llvm.insertvalue %524, %523[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %526 = llvm.insertvalue %499, %525[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %527 = llvm.insertvalue %500, %526[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %528 = llvm.insertvalue %501, %527[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %529 = llvm.insertvalue %502, %528[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %530 = llvm.insertvalue %505, %529[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %531 = llvm.insertvalue %504, %530[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %532 = llvm.insertvalue %502, %531[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %533 = llvm.insertvalue %503, %532[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %534 = llvm.mlir.constant(0 : index) : i64
    %535 = llvm.mlir.constant(1 : index) : i64
    %536 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb61(%534 : i64)
  ^bb61(%537: i64):  // 2 preds: ^bb60, ^bb71
    %538 = llvm.icmp "slt" %537, %535 : i64
    llvm.cond_br %538, ^bb62, ^bb72
  ^bb62:  // pred: ^bb61
    %539 = llvm.mlir.constant(0 : index) : i64
    %540 = llvm.mlir.constant(1 : index) : i64
    %541 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb63(%539 : i64)
  ^bb63(%542: i64):  // 2 preds: ^bb62, ^bb70
    %543 = llvm.icmp "slt" %542, %540 : i64
    llvm.cond_br %543, ^bb64, ^bb71
  ^bb64:  // pred: ^bb63
    %544 = llvm.mlir.constant(0 : index) : i64
    %545 = llvm.mlir.constant(1 : index) : i64
    %546 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb65(%544 : i64)
  ^bb65(%547: i64):  // 2 preds: ^bb64, ^bb69
    %548 = llvm.icmp "slt" %547, %545 : i64
    llvm.cond_br %548, ^bb66, ^bb70
  ^bb66:  // pred: ^bb65
    %549 = llvm.mlir.constant(0 : index) : i64
    %550 = llvm.mlir.constant(2 : index) : i64
    %551 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb67(%549 : i64)
  ^bb67(%552: i64):  // 2 preds: ^bb66, ^bb68
    %553 = llvm.icmp "slt" %552, %550 : i64
    llvm.cond_br %553, ^bb68, ^bb69
  ^bb68:  // pred: ^bb67
    %554 = llvm.extractvalue %302[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %555 = llvm.mlir.constant(2 : index) : i64
    %556 = llvm.mul %14, %555  : i64
    %557 = llvm.mlir.constant(2 : index) : i64
    %558 = llvm.mul %14, %557  : i64
    %559 = llvm.add %556, %558  : i64
    %560 = llvm.mlir.constant(2 : index) : i64
    %561 = llvm.mul %14, %560  : i64
    %562 = llvm.add %559, %561  : i64
    %563 = llvm.add %562, %552  : i64
    %564 = llvm.getelementptr %554[%563] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %565 = llvm.load %564 : !llvm.ptr<i32>
    %566 = llvm.extractvalue %533[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %567 = llvm.mlir.constant(2 : index) : i64
    %568 = llvm.mul %537, %567  : i64
    %569 = llvm.mlir.constant(2 : index) : i64
    %570 = llvm.mul %542, %569  : i64
    %571 = llvm.add %568, %570  : i64
    %572 = llvm.mlir.constant(2 : index) : i64
    %573 = llvm.mul %547, %572  : i64
    %574 = llvm.add %571, %573  : i64
    %575 = llvm.add %574, %552  : i64
    %576 = llvm.getelementptr %566[%575] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %565, %576 : !llvm.ptr<i32>
    %577 = llvm.add %552, %551  : i64
    llvm.br ^bb67(%577 : i64)
  ^bb69:  // pred: ^bb67
    %578 = llvm.add %547, %546  : i64
    llvm.br ^bb65(%578 : i64)
  ^bb70:  // pred: ^bb65
    %579 = llvm.add %542, %541  : i64
    llvm.br ^bb63(%579 : i64)
  ^bb71:  // pred: ^bb63
    %580 = llvm.add %537, %536  : i64
    llvm.br ^bb61(%580 : i64)
  ^bb72:  // pred: ^bb61
    %581 = llvm.mlir.constant(1 : index) : i64
    %582 = llvm.mlir.constant(1 : index) : i64
    %583 = llvm.mlir.constant(1 : index) : i64
    %584 = llvm.mlir.constant(2 : index) : i64
    %585 = llvm.mlir.constant(1 : index) : i64
    %586 = llvm.mlir.constant(2 : index) : i64
    %587 = llvm.mlir.constant(2 : index) : i64
    %588 = llvm.mlir.constant(2 : index) : i64
    %589 = llvm.mlir.null : !llvm.ptr<i32>
    %590 = llvm.getelementptr %589[%588] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %591 = llvm.ptrtoint %590 : !llvm.ptr<i32> to i64
    %592 = llvm.mlir.constant(16 : index) : i64
    %593 = llvm.add %591, %592  : i64
    %594 = llvm.call @malloc(%593) : (i64) -> !llvm.ptr<i8>
    %595 = llvm.bitcast %594 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %596 = llvm.ptrtoint %595 : !llvm.ptr<i32> to i64
    %597 = llvm.mlir.constant(1 : index) : i64
    %598 = llvm.sub %592, %597  : i64
    %599 = llvm.add %596, %598  : i64
    %600 = llvm.urem %599, %592  : i64
    %601 = llvm.sub %599, %600  : i64
    %602 = llvm.inttoptr %601 : i64 to !llvm.ptr<i32>
    %603 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %604 = llvm.insertvalue %595, %603[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %605 = llvm.insertvalue %602, %604[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %606 = llvm.mlir.constant(0 : index) : i64
    %607 = llvm.insertvalue %606, %605[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %608 = llvm.insertvalue %581, %607[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %609 = llvm.insertvalue %582, %608[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %610 = llvm.insertvalue %583, %609[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %611 = llvm.insertvalue %584, %610[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %612 = llvm.insertvalue %587, %611[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %613 = llvm.insertvalue %586, %612[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %614 = llvm.insertvalue %584, %613[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %615 = llvm.insertvalue %585, %614[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %616 = llvm.mlir.constant(0 : index) : i64
    %617 = llvm.mlir.constant(1 : index) : i64
    %618 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb73(%616 : i64)
  ^bb73(%619: i64):  // 2 preds: ^bb72, ^bb83
    %620 = llvm.icmp "slt" %619, %617 : i64
    llvm.cond_br %620, ^bb74, ^bb84
  ^bb74:  // pred: ^bb73
    %621 = llvm.mlir.constant(0 : index) : i64
    %622 = llvm.mlir.constant(1 : index) : i64
    %623 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb75(%621 : i64)
  ^bb75(%624: i64):  // 2 preds: ^bb74, ^bb82
    %625 = llvm.icmp "slt" %624, %622 : i64
    llvm.cond_br %625, ^bb76, ^bb83
  ^bb76:  // pred: ^bb75
    %626 = llvm.mlir.constant(0 : index) : i64
    %627 = llvm.mlir.constant(1 : index) : i64
    %628 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb77(%626 : i64)
  ^bb77(%629: i64):  // 2 preds: ^bb76, ^bb81
    %630 = llvm.icmp "slt" %629, %627 : i64
    llvm.cond_br %630, ^bb78, ^bb82
  ^bb78:  // pred: ^bb77
    %631 = llvm.mlir.constant(0 : index) : i64
    %632 = llvm.mlir.constant(2 : index) : i64
    %633 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb79(%631 : i64)
  ^bb79(%634: i64):  // 2 preds: ^bb78, ^bb80
    %635 = llvm.icmp "slt" %634, %632 : i64
    llvm.cond_br %635, ^bb80, ^bb81
  ^bb80:  // pred: ^bb79
    %636 = llvm.extractvalue %220[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %637 = llvm.mlir.constant(2 : index) : i64
    %638 = llvm.mul %619, %637  : i64
    %639 = llvm.mlir.constant(2 : index) : i64
    %640 = llvm.mul %624, %639  : i64
    %641 = llvm.add %638, %640  : i64
    %642 = llvm.mlir.constant(2 : index) : i64
    %643 = llvm.mul %629, %642  : i64
    %644 = llvm.add %641, %643  : i64
    %645 = llvm.add %644, %634  : i64
    %646 = llvm.getelementptr %636[%645] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %647 = llvm.load %646 : !llvm.ptr<i32>
    %648 = llvm.sub %12, %647  : i32
    %649 = llvm.extractvalue %615[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %650 = llvm.mlir.constant(2 : index) : i64
    %651 = llvm.mul %619, %650  : i64
    %652 = llvm.mlir.constant(2 : index) : i64
    %653 = llvm.mul %624, %652  : i64
    %654 = llvm.add %651, %653  : i64
    %655 = llvm.mlir.constant(2 : index) : i64
    %656 = llvm.mul %629, %655  : i64
    %657 = llvm.add %654, %656  : i64
    %658 = llvm.add %657, %634  : i64
    %659 = llvm.getelementptr %649[%658] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %648, %659 : !llvm.ptr<i32>
    %660 = llvm.add %634, %633  : i64
    llvm.br ^bb79(%660 : i64)
  ^bb81:  // pred: ^bb79
    %661 = llvm.add %629, %628  : i64
    llvm.br ^bb77(%661 : i64)
  ^bb82:  // pred: ^bb77
    %662 = llvm.add %624, %623  : i64
    llvm.br ^bb75(%662 : i64)
  ^bb83:  // pred: ^bb75
    %663 = llvm.add %619, %618  : i64
    llvm.br ^bb73(%663 : i64)
  ^bb84:  // pred: ^bb73
    %664 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    %665 = llvm.insertvalue %533, %664[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %666 = llvm.insertvalue %615, %665[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    llvm.return %666 : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) attributes {input_names = ["v5_0"], llvm.emit_c_interface, output_names = ["v4_0", "v2_0"]} {
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
    %12 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    llvm.store %12, %arg0 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
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
    llvm.call @_mlir_ciface_main_graph(%2, %6) : (!llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) -> ()
    %44 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %45 = llvm.extractvalue %44[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %46 = llvm.extractvalue %44[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
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

