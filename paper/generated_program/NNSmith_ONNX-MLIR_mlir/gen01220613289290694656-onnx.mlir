module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 2 , 1 , 1] , \22name\22 : \22v3_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i32\22 , \22dims\22 : [] , \22name\22 : \22v6_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 2 , 1 , 1] , \22name\22 : \22v0_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.mlir.global internal constant @constant_8(dense<7> : tensor<1xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i32>
  llvm.mlir.global internal constant @constant_7(dense<[1, 2, 1, 1]> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.mlir.global internal constant @constant_6(dense<-1> : tensor<i64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i64>
  llvm.mlir.global internal constant @constant_5(dense<[1, 2, 1, 1]> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> attributes {input_names = ["v3_0"], llvm.emit_c_interface, output_names = ["v6_0", "v0_0"]} {
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
    %13 = llvm.mlir.constant(1 : i64) : i64
    %14 = llvm.mlir.constant(2 : index) : i64
    %15 = llvm.mlir.constant(0 : index) : i64
    %16 = llvm.mlir.constant(0 : i32) : i32
    %17 = llvm.mlir.constant(1 : index) : i64
    %18 = llvm.mlir.addressof @constant_5 : !llvm.ptr<array<4 x i64>>
    %19 = llvm.bitcast %18 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %20 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %21 = llvm.insertvalue %19, %20[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %22 = llvm.insertvalue %19, %21[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %23 = llvm.mlir.constant(0 : index) : i64
    %24 = llvm.insertvalue %23, %22[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %25 = llvm.mlir.constant(4 : index) : i64
    %26 = llvm.insertvalue %25, %24[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %27 = llvm.mlir.constant(1 : index) : i64
    %28 = llvm.insertvalue %27, %26[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %29 = llvm.mlir.addressof @constant_6 : !llvm.ptr<array<1 x i64>>
    %30 = llvm.bitcast %29 : !llvm.ptr<array<1 x i64>> to !llvm.ptr<i64>
    %31 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64)>
    %32 = llvm.insertvalue %30, %31[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %33 = llvm.insertvalue %30, %32[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %34 = llvm.mlir.constant(0 : index) : i64
    %35 = llvm.insertvalue %34, %33[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %36 = llvm.mlir.addressof @constant_7 : !llvm.ptr<array<4 x i64>>
    %37 = llvm.bitcast %36 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %38 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %39 = llvm.insertvalue %37, %38[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %40 = llvm.insertvalue %37, %39[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %41 = llvm.mlir.constant(0 : index) : i64
    %42 = llvm.insertvalue %41, %40[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %43 = llvm.mlir.constant(4 : index) : i64
    %44 = llvm.insertvalue %43, %42[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %45 = llvm.mlir.constant(1 : index) : i64
    %46 = llvm.insertvalue %45, %44[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %47 = llvm.mlir.addressof @constant_8 : !llvm.ptr<array<1 x i32>>
    %48 = llvm.bitcast %47 : !llvm.ptr<array<1 x i32>> to !llvm.ptr<i32>
    %49 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %50 = llvm.insertvalue %48, %49[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %51 = llvm.insertvalue %48, %50[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %52 = llvm.mlir.constant(0 : index) : i64
    %53 = llvm.insertvalue %52, %51[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %54 = llvm.mlir.constant(1 : index) : i64
    %55 = llvm.insertvalue %54, %53[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %56 = llvm.mlir.constant(1 : index) : i64
    %57 = llvm.insertvalue %56, %55[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %58 = llvm.mlir.constant(1 : index) : i64
    %59 = llvm.mlir.null : !llvm.ptr<i32>
    %60 = llvm.getelementptr %59[%58] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %61 = llvm.ptrtoint %60 : !llvm.ptr<i32> to i64
    %62 = llvm.call @malloc(%61) : (i64) -> !llvm.ptr<i8>
    %63 = llvm.bitcast %62 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %64 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64)>
    %65 = llvm.insertvalue %63, %64[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %66 = llvm.insertvalue %63, %65[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %67 = llvm.mlir.constant(0 : index) : i64
    %68 = llvm.insertvalue %67, %66[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %69 = llvm.mlir.constant(1 : index) : i64
    %70 = llvm.mlir.null : !llvm.ptr<i32>
    %71 = llvm.getelementptr %70[%69] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %72 = llvm.ptrtoint %71 : !llvm.ptr<i32> to i64
    %73 = llvm.alloca %72 x i32 : (i64) -> !llvm.ptr<i32>
    %74 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64)>
    %75 = llvm.insertvalue %73, %74[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %76 = llvm.insertvalue %73, %75[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %77 = llvm.mlir.constant(0 : index) : i64
    %78 = llvm.insertvalue %77, %76[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %79 = llvm.mlir.constant(0 : index) : i64
    %80 = llvm.mlir.constant(1 : index) : i64
    %81 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%79 : i64)
  ^bb1(%82: i64):  // 2 preds: ^bb0, ^bb2
    %83 = llvm.icmp "slt" %82, %80 : i64
    llvm.cond_br %83, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    %84 = llvm.extractvalue %57[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %85 = llvm.getelementptr %84[%82] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %86 = llvm.load %85 : !llvm.ptr<i32>
    %87 = llvm.extractvalue %57[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %88 = llvm.getelementptr %87[%82] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %89 = llvm.load %88 : !llvm.ptr<i32>
    %90 = llvm.extractvalue %78[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %91 = llvm.load %90 : !llvm.ptr<i32>
    %92 = llvm.mul %86, %89  : i32
    %93 = llvm.add %91, %92  : i32
    %94 = llvm.extractvalue %78[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    llvm.store %93, %94 : !llvm.ptr<i32>
    %95 = llvm.extractvalue %78[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    llvm.store %16, %95 : !llvm.ptr<i32>
    %96 = llvm.extractvalue %78[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %97 = llvm.load %96 : !llvm.ptr<i32>
    %98 = llvm.extractvalue %68[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    llvm.store %97, %98 : !llvm.ptr<i32>
    %99 = llvm.add %82, %81  : i64
    llvm.br ^bb1(%99 : i64)
  ^bb3:  // pred: ^bb1
    %100 = llvm.mlir.constant(1 : index) : i64
    %101 = llvm.mlir.constant(2 : index) : i64
    %102 = llvm.mlir.constant(1 : index) : i64
    %103 = llvm.mlir.constant(1 : index) : i64
    %104 = llvm.mlir.constant(1 : index) : i64
    %105 = llvm.mlir.constant(2 : index) : i64
    %106 = llvm.mlir.null : !llvm.ptr<i32>
    %107 = llvm.getelementptr %106[%105] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %108 = llvm.ptrtoint %107 : !llvm.ptr<i32> to i64
    %109 = llvm.mlir.constant(16 : index) : i64
    %110 = llvm.add %108, %109  : i64
    %111 = llvm.call @malloc(%110) : (i64) -> !llvm.ptr<i8>
    %112 = llvm.bitcast %111 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %113 = llvm.ptrtoint %112 : !llvm.ptr<i32> to i64
    %114 = llvm.mlir.constant(1 : index) : i64
    %115 = llvm.sub %109, %114  : i64
    %116 = llvm.add %113, %115  : i64
    %117 = llvm.urem %116, %109  : i64
    %118 = llvm.sub %116, %117  : i64
    %119 = llvm.inttoptr %118 : i64 to !llvm.ptr<i32>
    %120 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %121 = llvm.insertvalue %112, %120[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %122 = llvm.insertvalue %119, %121[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %123 = llvm.mlir.constant(0 : index) : i64
    %124 = llvm.insertvalue %123, %122[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %125 = llvm.insertvalue %100, %124[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %126 = llvm.insertvalue %101, %125[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %127 = llvm.insertvalue %102, %126[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %128 = llvm.insertvalue %103, %127[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %129 = llvm.insertvalue %101, %128[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %130 = llvm.insertvalue %102, %129[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %131 = llvm.insertvalue %103, %130[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %132 = llvm.insertvalue %104, %131[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %133 = llvm.mlir.constant(0 : index) : i64
    %134 = llvm.mlir.constant(1 : index) : i64
    %135 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb4(%133 : i64)
  ^bb4(%136: i64):  // 2 preds: ^bb3, ^bb14
    %137 = llvm.icmp "slt" %136, %134 : i64
    llvm.cond_br %137, ^bb5, ^bb15
  ^bb5:  // pred: ^bb4
    %138 = llvm.mlir.constant(0 : index) : i64
    %139 = llvm.mlir.constant(2 : index) : i64
    %140 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb6(%138 : i64)
  ^bb6(%141: i64):  // 2 preds: ^bb5, ^bb13
    %142 = llvm.icmp "slt" %141, %139 : i64
    llvm.cond_br %142, ^bb7, ^bb14
  ^bb7:  // pred: ^bb6
    %143 = llvm.mlir.constant(0 : index) : i64
    %144 = llvm.mlir.constant(1 : index) : i64
    %145 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb8(%143 : i64)
  ^bb8(%146: i64):  // 2 preds: ^bb7, ^bb12
    %147 = llvm.icmp "slt" %146, %144 : i64
    llvm.cond_br %147, ^bb9, ^bb13
  ^bb9:  // pred: ^bb8
    %148 = llvm.mlir.constant(0 : index) : i64
    %149 = llvm.mlir.constant(1 : index) : i64
    %150 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb10(%148 : i64)
  ^bb10(%151: i64):  // 2 preds: ^bb9, ^bb11
    %152 = llvm.icmp "slt" %151, %149 : i64
    llvm.cond_br %152, ^bb11, ^bb12
  ^bb11:  // pred: ^bb10
    %153 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %154 = llvm.mlir.constant(2 : index) : i64
    %155 = llvm.mul %136, %154  : i64
    %156 = llvm.add %155, %141  : i64
    %157 = llvm.add %156, %146  : i64
    %158 = llvm.add %157, %151  : i64
    %159 = llvm.getelementptr %153[%158] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %160 = llvm.load %159 : !llvm.ptr<i32>
    %161 = llvm.extractvalue %57[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %162 = llvm.getelementptr %161[%151] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %163 = llvm.load %162 : !llvm.ptr<i32>
    %164 = llvm.mul %160, %163  : i32
    %165 = llvm.extractvalue %132[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %166 = llvm.mlir.constant(2 : index) : i64
    %167 = llvm.mul %136, %166  : i64
    %168 = llvm.add %167, %141  : i64
    %169 = llvm.add %168, %146  : i64
    %170 = llvm.add %169, %151  : i64
    %171 = llvm.getelementptr %165[%170] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %164, %171 : !llvm.ptr<i32>
    %172 = llvm.add %151, %150  : i64
    llvm.br ^bb10(%172 : i64)
  ^bb12:  // pred: ^bb10
    %173 = llvm.add %146, %145  : i64
    llvm.br ^bb8(%173 : i64)
  ^bb13:  // pred: ^bb8
    %174 = llvm.add %141, %140  : i64
    llvm.br ^bb6(%174 : i64)
  ^bb14:  // pred: ^bb6
    %175 = llvm.add %136, %135  : i64
    llvm.br ^bb4(%175 : i64)
  ^bb15:  // pred: ^bb4
    %176 = llvm.mlir.constant(4 : index) : i64
    %177 = llvm.mlir.constant(1 : index) : i64
    %178 = llvm.mlir.null : !llvm.ptr<i64>
    %179 = llvm.getelementptr %178[%176] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %180 = llvm.ptrtoint %179 : !llvm.ptr<i64> to i64
    %181 = llvm.mlir.constant(16 : index) : i64
    %182 = llvm.add %180, %181  : i64
    %183 = llvm.call @malloc(%182) : (i64) -> !llvm.ptr<i8>
    %184 = llvm.bitcast %183 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %185 = llvm.ptrtoint %184 : !llvm.ptr<i64> to i64
    %186 = llvm.mlir.constant(1 : index) : i64
    %187 = llvm.sub %181, %186  : i64
    %188 = llvm.add %185, %187  : i64
    %189 = llvm.urem %188, %181  : i64
    %190 = llvm.sub %188, %189  : i64
    %191 = llvm.inttoptr %190 : i64 to !llvm.ptr<i64>
    %192 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %193 = llvm.insertvalue %184, %192[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %194 = llvm.insertvalue %191, %193[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %195 = llvm.mlir.constant(0 : index) : i64
    %196 = llvm.insertvalue %195, %194[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %197 = llvm.insertvalue %176, %196[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %198 = llvm.insertvalue %177, %197[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %199 = llvm.mlir.constant(0 : index) : i64
    %200 = llvm.mlir.constant(4 : index) : i64
    %201 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb16(%199 : i64)
  ^bb16(%202: i64):  // 2 preds: ^bb15, ^bb17
    %203 = llvm.icmp "slt" %202, %200 : i64
    llvm.cond_br %203, ^bb17, ^bb18
  ^bb17:  // pred: ^bb16
    %204 = llvm.extractvalue %198[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %205 = llvm.getelementptr %204[%202] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %13, %205 : !llvm.ptr<i64>
    %206 = llvm.add %202, %201  : i64
    llvm.br ^bb16(%206 : i64)
  ^bb18:  // pred: ^bb16
    %207 = llvm.mlir.constant(4 : index) : i64
    %208 = llvm.mlir.constant(1 : index) : i64
    %209 = llvm.mlir.null : !llvm.ptr<i64>
    %210 = llvm.getelementptr %209[%207] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %211 = llvm.ptrtoint %210 : !llvm.ptr<i64> to i64
    %212 = llvm.mlir.constant(16 : index) : i64
    %213 = llvm.add %211, %212  : i64
    %214 = llvm.call @malloc(%213) : (i64) -> !llvm.ptr<i8>
    %215 = llvm.bitcast %214 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %216 = llvm.ptrtoint %215 : !llvm.ptr<i64> to i64
    %217 = llvm.mlir.constant(1 : index) : i64
    %218 = llvm.sub %212, %217  : i64
    %219 = llvm.add %216, %218  : i64
    %220 = llvm.urem %219, %212  : i64
    %221 = llvm.sub %219, %220  : i64
    %222 = llvm.inttoptr %221 : i64 to !llvm.ptr<i64>
    %223 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %224 = llvm.insertvalue %215, %223[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %225 = llvm.insertvalue %222, %224[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %226 = llvm.mlir.constant(0 : index) : i64
    %227 = llvm.insertvalue %226, %225[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %228 = llvm.insertvalue %207, %227[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %229 = llvm.insertvalue %208, %228[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %230 = llvm.mlir.constant(0 : index) : i64
    %231 = llvm.mlir.constant(4 : index) : i64
    %232 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%230 : i64)
  ^bb19(%233: i64):  // 2 preds: ^bb18, ^bb20
    %234 = llvm.icmp "slt" %233, %231 : i64
    llvm.cond_br %234, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %235 = llvm.extractvalue %198[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %236 = llvm.getelementptr %235[%233] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %237 = llvm.load %236 : !llvm.ptr<i64>
    %238 = llvm.extractvalue %35[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %239 = llvm.load %238 : !llvm.ptr<i64>
    %240 = llvm.mul %237, %239  : i64
    %241 = llvm.extractvalue %229[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %242 = llvm.getelementptr %241[%233] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %240, %242 : !llvm.ptr<i64>
    %243 = llvm.add %233, %232  : i64
    llvm.br ^bb19(%243 : i64)
  ^bb21:  // pred: ^bb19
    %244 = llvm.mlir.constant(4 : index) : i64
    %245 = llvm.mlir.constant(1 : index) : i64
    %246 = llvm.mlir.null : !llvm.ptr<i1>
    %247 = llvm.getelementptr %246[%244] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %248 = llvm.ptrtoint %247 : !llvm.ptr<i1> to i64
    %249 = llvm.mlir.constant(16 : index) : i64
    %250 = llvm.add %248, %249  : i64
    %251 = llvm.call @malloc(%250) : (i64) -> !llvm.ptr<i8>
    %252 = llvm.bitcast %251 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %253 = llvm.ptrtoint %252 : !llvm.ptr<i1> to i64
    %254 = llvm.mlir.constant(1 : index) : i64
    %255 = llvm.sub %249, %254  : i64
    %256 = llvm.add %253, %255  : i64
    %257 = llvm.urem %256, %249  : i64
    %258 = llvm.sub %256, %257  : i64
    %259 = llvm.inttoptr %258 : i64 to !llvm.ptr<i1>
    %260 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %261 = llvm.insertvalue %252, %260[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %262 = llvm.insertvalue %259, %261[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %263 = llvm.mlir.constant(0 : index) : i64
    %264 = llvm.insertvalue %263, %262[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %265 = llvm.insertvalue %244, %264[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %266 = llvm.insertvalue %245, %265[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %267 = llvm.mlir.constant(0 : index) : i64
    %268 = llvm.mlir.constant(4 : index) : i64
    %269 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb22(%267 : i64)
  ^bb22(%270: i64):  // 2 preds: ^bb21, ^bb23
    %271 = llvm.icmp "slt" %270, %268 : i64
    llvm.cond_br %271, ^bb23, ^bb24
  ^bb23:  // pred: ^bb22
    %272 = llvm.extractvalue %28[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %273 = llvm.getelementptr %272[%270] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %274 = llvm.load %273 : !llvm.ptr<i64>
    %275 = llvm.extractvalue %229[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %276 = llvm.getelementptr %275[%270] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %277 = llvm.load %276 : !llvm.ptr<i64>
    %278 = llvm.icmp "eq" %274, %277 : i64
    %279 = llvm.extractvalue %266[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %280 = llvm.getelementptr %279[%270] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %278, %280 : !llvm.ptr<i1>
    %281 = llvm.add %270, %269  : i64
    llvm.br ^bb22(%281 : i64)
  ^bb24:  // pred: ^bb22
    %282 = llvm.mlir.constant(4 : index) : i64
    %283 = llvm.mlir.constant(1 : index) : i64
    %284 = llvm.mlir.null : !llvm.ptr<i64>
    %285 = llvm.getelementptr %284[%282] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %286 = llvm.ptrtoint %285 : !llvm.ptr<i64> to i64
    %287 = llvm.mlir.constant(16 : index) : i64
    %288 = llvm.add %286, %287  : i64
    %289 = llvm.call @malloc(%288) : (i64) -> !llvm.ptr<i8>
    %290 = llvm.bitcast %289 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %291 = llvm.ptrtoint %290 : !llvm.ptr<i64> to i64
    %292 = llvm.mlir.constant(1 : index) : i64
    %293 = llvm.sub %287, %292  : i64
    %294 = llvm.add %291, %293  : i64
    %295 = llvm.urem %294, %287  : i64
    %296 = llvm.sub %294, %295  : i64
    %297 = llvm.inttoptr %296 : i64 to !llvm.ptr<i64>
    %298 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %299 = llvm.insertvalue %290, %298[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %300 = llvm.insertvalue %297, %299[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %301 = llvm.mlir.constant(0 : index) : i64
    %302 = llvm.insertvalue %301, %300[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %303 = llvm.insertvalue %282, %302[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %304 = llvm.insertvalue %283, %303[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %305 = llvm.mlir.constant(0 : index) : i64
    %306 = llvm.mlir.constant(4 : index) : i64
    %307 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb25(%305 : i64)
  ^bb25(%308: i64):  // 2 preds: ^bb24, ^bb26
    %309 = llvm.icmp "slt" %308, %306 : i64
    llvm.cond_br %309, ^bb26, ^bb27
  ^bb26:  // pred: ^bb25
    %310 = llvm.extractvalue %266[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %311 = llvm.getelementptr %310[%308] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %312 = llvm.load %311 : !llvm.ptr<i1>
    %313 = llvm.extractvalue %198[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %314 = llvm.getelementptr %313[%308] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %315 = llvm.load %314 : !llvm.ptr<i64>
    %316 = llvm.extractvalue %46[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %317 = llvm.getelementptr %316[%308] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %318 = llvm.load %317 : !llvm.ptr<i64>
    %319 = llvm.select %312, %315, %318 : i1, i64
    %320 = llvm.extractvalue %304[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %321 = llvm.getelementptr %320[%308] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %319, %321 : !llvm.ptr<i64>
    %322 = llvm.add %308, %307  : i64
    llvm.br ^bb25(%322 : i64)
  ^bb27:  // pred: ^bb25
    %323 = llvm.extractvalue %304[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %324 = llvm.getelementptr %323[%15] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %325 = llvm.load %324 : !llvm.ptr<i64>
    %326 = llvm.extractvalue %304[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %327 = llvm.getelementptr %326[%14] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %328 = llvm.load %327 : !llvm.ptr<i64>
    %329 = llvm.extractvalue %304[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %330 = llvm.getelementptr %329[%12] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %331 = llvm.load %330 : !llvm.ptr<i64>
    %332 = llvm.mlir.constant(2 : index) : i64
    %333 = llvm.mlir.constant(1 : index) : i64
    %334 = llvm.mul %331, %328  : i64
    %335 = llvm.mul %334, %332  : i64
    %336 = llvm.mul %335, %325  : i64
    %337 = llvm.mlir.null : !llvm.ptr<i32>
    %338 = llvm.getelementptr %337[%336] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %339 = llvm.ptrtoint %338 : !llvm.ptr<i32> to i64
    %340 = llvm.mlir.constant(16 : index) : i64
    %341 = llvm.add %339, %340  : i64
    %342 = llvm.call @malloc(%341) : (i64) -> !llvm.ptr<i8>
    %343 = llvm.bitcast %342 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %344 = llvm.ptrtoint %343 : !llvm.ptr<i32> to i64
    %345 = llvm.mlir.constant(1 : index) : i64
    %346 = llvm.sub %340, %345  : i64
    %347 = llvm.add %344, %346  : i64
    %348 = llvm.urem %347, %340  : i64
    %349 = llvm.sub %347, %348  : i64
    %350 = llvm.inttoptr %349 : i64 to !llvm.ptr<i32>
    %351 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %352 = llvm.insertvalue %343, %351[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %353 = llvm.insertvalue %350, %352[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %354 = llvm.mlir.constant(0 : index) : i64
    %355 = llvm.insertvalue %354, %353[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %356 = llvm.insertvalue %325, %355[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %357 = llvm.insertvalue %332, %356[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %358 = llvm.insertvalue %328, %357[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %359 = llvm.insertvalue %331, %358[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %360 = llvm.insertvalue %335, %359[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %361 = llvm.insertvalue %334, %360[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %362 = llvm.insertvalue %331, %361[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %363 = llvm.insertvalue %333, %362[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %364 = llvm.mlir.constant(0 : index) : i64
    %365 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb28(%364 : i64)
  ^bb28(%366: i64):  // 2 preds: ^bb27, ^bb38
    %367 = llvm.icmp "slt" %366, %325 : i64
    llvm.cond_br %367, ^bb29, ^bb39
  ^bb29:  // pred: ^bb28
    %368 = llvm.mlir.constant(0 : index) : i64
    %369 = llvm.mlir.constant(2 : index) : i64
    %370 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb30(%368 : i64)
  ^bb30(%371: i64):  // 2 preds: ^bb29, ^bb37
    %372 = llvm.icmp "slt" %371, %369 : i64
    llvm.cond_br %372, ^bb31, ^bb38
  ^bb31:  // pred: ^bb30
    %373 = llvm.mlir.constant(0 : index) : i64
    %374 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb32(%373 : i64)
  ^bb32(%375: i64):  // 2 preds: ^bb31, ^bb36
    %376 = llvm.icmp "slt" %375, %328 : i64
    llvm.cond_br %376, ^bb33, ^bb37
  ^bb33:  // pred: ^bb32
    %377 = llvm.mlir.constant(0 : index) : i64
    %378 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb34(%377 : i64)
  ^bb34(%379: i64):  // 2 preds: ^bb33, ^bb35
    %380 = llvm.icmp "slt" %379, %331 : i64
    llvm.cond_br %380, ^bb35, ^bb36
  ^bb35:  // pred: ^bb34
    %381 = llvm.extractvalue %132[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %382 = llvm.mlir.constant(2 : index) : i64
    %383 = llvm.mul %15, %382  : i64
    %384 = llvm.add %383, %371  : i64
    %385 = llvm.add %384, %15  : i64
    %386 = llvm.add %385, %15  : i64
    %387 = llvm.getelementptr %381[%386] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %388 = llvm.load %387 : !llvm.ptr<i32>
    %389 = llvm.extractvalue %363[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %390 = llvm.extractvalue %363[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %391 = llvm.mul %366, %390  : i64
    %392 = llvm.extractvalue %363[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %393 = llvm.mul %371, %392  : i64
    %394 = llvm.add %391, %393  : i64
    %395 = llvm.extractvalue %363[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %396 = llvm.mul %375, %395  : i64
    %397 = llvm.add %394, %396  : i64
    %398 = llvm.add %397, %379  : i64
    %399 = llvm.getelementptr %389[%398] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %388, %399 : !llvm.ptr<i32>
    %400 = llvm.add %379, %378  : i64
    llvm.br ^bb34(%400 : i64)
  ^bb36:  // pred: ^bb34
    %401 = llvm.add %375, %374  : i64
    llvm.br ^bb32(%401 : i64)
  ^bb37:  // pred: ^bb32
    %402 = llvm.add %371, %370  : i64
    llvm.br ^bb30(%402 : i64)
  ^bb38:  // pred: ^bb30
    %403 = llvm.add %366, %365  : i64
    llvm.br ^bb28(%403 : i64)
  ^bb39:  // pred: ^bb28
    %404 = llvm.mlir.constant(1 : index) : i64
    %405 = llvm.mlir.constant(1 : index) : i64
    %406 = llvm.mul %331, %328  : i64
    %407 = llvm.mul %406, %404  : i64
    %408 = llvm.mul %407, %325  : i64
    %409 = llvm.mlir.null : !llvm.ptr<i32>
    %410 = llvm.getelementptr %409[%408] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %411 = llvm.ptrtoint %410 : !llvm.ptr<i32> to i64
    %412 = llvm.mlir.constant(16 : index) : i64
    %413 = llvm.add %411, %412  : i64
    %414 = llvm.call @malloc(%413) : (i64) -> !llvm.ptr<i8>
    %415 = llvm.bitcast %414 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %416 = llvm.ptrtoint %415 : !llvm.ptr<i32> to i64
    %417 = llvm.mlir.constant(1 : index) : i64
    %418 = llvm.sub %412, %417  : i64
    %419 = llvm.add %416, %418  : i64
    %420 = llvm.urem %419, %412  : i64
    %421 = llvm.sub %419, %420  : i64
    %422 = llvm.inttoptr %421 : i64 to !llvm.ptr<i32>
    %423 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %424 = llvm.insertvalue %415, %423[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %425 = llvm.insertvalue %422, %424[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %426 = llvm.mlir.constant(0 : index) : i64
    %427 = llvm.insertvalue %426, %425[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %428 = llvm.insertvalue %325, %427[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %429 = llvm.insertvalue %404, %428[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %430 = llvm.insertvalue %328, %429[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %431 = llvm.insertvalue %331, %430[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %432 = llvm.insertvalue %407, %431[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %433 = llvm.insertvalue %406, %432[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %434 = llvm.insertvalue %331, %433[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %435 = llvm.insertvalue %405, %434[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %436 = llvm.mlir.constant(0 : index) : i64
    %437 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb40(%436 : i64)
  ^bb40(%438: i64):  // 2 preds: ^bb39, ^bb50
    %439 = llvm.icmp "slt" %438, %325 : i64
    llvm.cond_br %439, ^bb41, ^bb51
  ^bb41:  // pred: ^bb40
    %440 = llvm.mlir.constant(0 : index) : i64
    %441 = llvm.mlir.constant(1 : index) : i64
    %442 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb42(%440 : i64)
  ^bb42(%443: i64):  // 2 preds: ^bb41, ^bb49
    %444 = llvm.icmp "slt" %443, %441 : i64
    llvm.cond_br %444, ^bb43, ^bb50
  ^bb43:  // pred: ^bb42
    %445 = llvm.mlir.constant(0 : index) : i64
    %446 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb44(%445 : i64)
  ^bb44(%447: i64):  // 2 preds: ^bb43, ^bb48
    %448 = llvm.icmp "slt" %447, %328 : i64
    llvm.cond_br %448, ^bb45, ^bb49
  ^bb45:  // pred: ^bb44
    %449 = llvm.mlir.constant(0 : index) : i64
    %450 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb46(%449 : i64)
  ^bb46(%451: i64):  // 2 preds: ^bb45, ^bb47
    %452 = llvm.icmp "slt" %451, %331 : i64
    llvm.cond_br %452, ^bb47, ^bb48
  ^bb47:  // pred: ^bb46
    %453 = llvm.extractvalue %363[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %454 = llvm.extractvalue %363[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %455 = llvm.mul %438, %454  : i64
    %456 = llvm.extractvalue %363[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %457 = llvm.mul %443, %456  : i64
    %458 = llvm.add %455, %457  : i64
    %459 = llvm.extractvalue %363[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %460 = llvm.mul %447, %459  : i64
    %461 = llvm.add %458, %460  : i64
    %462 = llvm.add %461, %451  : i64
    %463 = llvm.getelementptr %453[%462] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %464 = llvm.load %463 : !llvm.ptr<i32>
    %465 = llvm.extractvalue %435[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %466 = llvm.extractvalue %435[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %467 = llvm.mul %438, %466  : i64
    %468 = llvm.extractvalue %435[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %469 = llvm.mul %443, %468  : i64
    %470 = llvm.add %467, %469  : i64
    %471 = llvm.extractvalue %435[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %472 = llvm.mul %447, %471  : i64
    %473 = llvm.add %470, %472  : i64
    %474 = llvm.add %473, %451  : i64
    %475 = llvm.getelementptr %465[%474] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %464, %475 : !llvm.ptr<i32>
    %476 = llvm.add %451, %450  : i64
    llvm.br ^bb46(%476 : i64)
  ^bb48:  // pred: ^bb46
    %477 = llvm.add %447, %446  : i64
    llvm.br ^bb44(%477 : i64)
  ^bb49:  // pred: ^bb44
    %478 = llvm.add %443, %442  : i64
    llvm.br ^bb42(%478 : i64)
  ^bb50:  // pred: ^bb42
    %479 = llvm.add %438, %437  : i64
    llvm.br ^bb40(%479 : i64)
  ^bb51:  // pred: ^bb40
    %480 = llvm.mlir.constant(1 : index) : i64
    %481 = llvm.mlir.constant(2 : index) : i64
    %482 = llvm.mlir.constant(1 : index) : i64
    %483 = llvm.mlir.constant(1 : index) : i64
    %484 = llvm.mlir.constant(1 : index) : i64
    %485 = llvm.mlir.constant(2 : index) : i64
    %486 = llvm.mlir.null : !llvm.ptr<i32>
    %487 = llvm.getelementptr %486[%485] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %488 = llvm.ptrtoint %487 : !llvm.ptr<i32> to i64
    %489 = llvm.mlir.constant(16 : index) : i64
    %490 = llvm.add %488, %489  : i64
    %491 = llvm.call @malloc(%490) : (i64) -> !llvm.ptr<i8>
    %492 = llvm.bitcast %491 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %493 = llvm.ptrtoint %492 : !llvm.ptr<i32> to i64
    %494 = llvm.mlir.constant(1 : index) : i64
    %495 = llvm.sub %489, %494  : i64
    %496 = llvm.add %493, %495  : i64
    %497 = llvm.urem %496, %489  : i64
    %498 = llvm.sub %496, %497  : i64
    %499 = llvm.inttoptr %498 : i64 to !llvm.ptr<i32>
    %500 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %501 = llvm.insertvalue %492, %500[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %502 = llvm.insertvalue %499, %501[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %503 = llvm.mlir.constant(0 : index) : i64
    %504 = llvm.insertvalue %503, %502[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %505 = llvm.insertvalue %480, %504[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %506 = llvm.insertvalue %481, %505[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %507 = llvm.insertvalue %482, %506[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %508 = llvm.insertvalue %483, %507[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %509 = llvm.insertvalue %481, %508[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %510 = llvm.insertvalue %482, %509[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %511 = llvm.insertvalue %483, %510[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %512 = llvm.insertvalue %484, %511[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %513 = llvm.icmp "sgt" %325, %17 : i64
    %514 = llvm.icmp "sgt" %328, %17 : i64
    %515 = llvm.icmp "sgt" %331, %17 : i64
    %516 = llvm.icmp "sgt" %325, %17 : i64
    %517 = llvm.icmp "sgt" %328, %17 : i64
    %518 = llvm.icmp "sgt" %331, %17 : i64
    %519 = llvm.mlir.constant(0 : index) : i64
    %520 = llvm.mlir.constant(1 : index) : i64
    %521 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb52(%519 : i64)
  ^bb52(%522: i64):  // 2 preds: ^bb51, ^bb62
    %523 = llvm.icmp "slt" %522, %520 : i64
    llvm.cond_br %523, ^bb53, ^bb63
  ^bb53:  // pred: ^bb52
    %524 = llvm.mlir.constant(0 : index) : i64
    %525 = llvm.mlir.constant(2 : index) : i64
    %526 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb54(%524 : i64)
  ^bb54(%527: i64):  // 2 preds: ^bb53, ^bb61
    %528 = llvm.icmp "slt" %527, %525 : i64
    llvm.cond_br %528, ^bb55, ^bb62
  ^bb55:  // pred: ^bb54
    %529 = llvm.mlir.constant(0 : index) : i64
    %530 = llvm.mlir.constant(1 : index) : i64
    %531 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb56(%529 : i64)
  ^bb56(%532: i64):  // 2 preds: ^bb55, ^bb60
    %533 = llvm.icmp "slt" %532, %530 : i64
    llvm.cond_br %533, ^bb57, ^bb61
  ^bb57:  // pred: ^bb56
    %534 = llvm.mlir.constant(0 : index) : i64
    %535 = llvm.mlir.constant(1 : index) : i64
    %536 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb58(%534 : i64)
  ^bb58(%537: i64):  // 2 preds: ^bb57, ^bb59
    %538 = llvm.icmp "slt" %537, %535 : i64
    llvm.cond_br %538, ^bb59, ^bb60
  ^bb59:  // pred: ^bb58
    %539 = llvm.select %513, %522, %15 : i1, i64
    %540 = llvm.select %514, %532, %15 : i1, i64
    %541 = llvm.select %515, %537, %15 : i1, i64
    %542 = llvm.extractvalue %363[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %543 = llvm.extractvalue %363[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %544 = llvm.mul %539, %543  : i64
    %545 = llvm.extractvalue %363[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %546 = llvm.mul %527, %545  : i64
    %547 = llvm.add %544, %546  : i64
    %548 = llvm.extractvalue %363[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %549 = llvm.mul %540, %548  : i64
    %550 = llvm.add %547, %549  : i64
    %551 = llvm.add %550, %541  : i64
    %552 = llvm.getelementptr %542[%551] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %553 = llvm.load %552 : !llvm.ptr<i32>
    %554 = llvm.select %516, %522, %15 : i1, i64
    %555 = llvm.select %517, %532, %15 : i1, i64
    %556 = llvm.select %518, %537, %15 : i1, i64
    %557 = llvm.extractvalue %435[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %558 = llvm.extractvalue %435[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %559 = llvm.mul %554, %558  : i64
    %560 = llvm.extractvalue %435[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %561 = llvm.mul %15, %560  : i64
    %562 = llvm.add %559, %561  : i64
    %563 = llvm.extractvalue %435[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %564 = llvm.mul %555, %563  : i64
    %565 = llvm.add %562, %564  : i64
    %566 = llvm.add %565, %556  : i64
    %567 = llvm.getelementptr %557[%566] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %568 = llvm.load %567 : !llvm.ptr<i32>
    %569 = llvm.icmp "slt" %553, %568 : i32
    %570 = llvm.select %569, %553, %568 : i1, i32
    %571 = llvm.extractvalue %512[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %572 = llvm.mlir.constant(2 : index) : i64
    %573 = llvm.mul %522, %572  : i64
    %574 = llvm.add %573, %527  : i64
    %575 = llvm.add %574, %532  : i64
    %576 = llvm.add %575, %537  : i64
    %577 = llvm.getelementptr %571[%576] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %570, %577 : !llvm.ptr<i32>
    %578 = llvm.add %537, %536  : i64
    llvm.br ^bb58(%578 : i64)
  ^bb60:  // pred: ^bb58
    %579 = llvm.add %532, %531  : i64
    llvm.br ^bb56(%579 : i64)
  ^bb61:  // pred: ^bb56
    %580 = llvm.add %527, %526  : i64
    llvm.br ^bb54(%580 : i64)
  ^bb62:  // pred: ^bb54
    %581 = llvm.add %522, %521  : i64
    llvm.br ^bb52(%581 : i64)
  ^bb63:  // pred: ^bb52
    %582 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    %583 = llvm.insertvalue %68, %582[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %584 = llvm.insertvalue %512, %583[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    llvm.return %584 : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) attributes {input_names = ["v3_0"], llvm.emit_c_interface, output_names = ["v6_0", "v0_0"]} {
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
    %12 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    llvm.store %12, %arg0 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
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
    llvm.call @_mlir_ciface_main_graph(%2, %6) : (!llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) -> ()
    %44 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %45 = llvm.extractvalue %44[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %46 = llvm.extractvalue %44[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %47 = llvm.mlir.constant(2 : i64) : i64
    %48 = llvm.mlir.constant(16 : i64) : i64
    %49 = llvm.call @malloc(%48) : (i64) -> !llvm.ptr<i8>
    %50 = llvm.bitcast %49 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %51 = llvm.mlir.constant(0 : i64) : i64
    %52 = llvm.call @omTensorCreateUntyped(%51) : (i64) -> !llvm.ptr<i8>
    %53 = llvm.mlir.constant(1 : i64) : i64
    %54 = llvm.extractvalue %45[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %55 = llvm.bitcast %54 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %56 = llvm.extractvalue %45[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %57 = llvm.bitcast %56 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%52, %53, %55, %57) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %58 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%52, %58) : (!llvm.ptr<i8>, i64) -> ()
    %59 = llvm.call @omTensorGetShape(%52) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %60 = llvm.call @omTensorGetStrides(%52) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %61 = llvm.mlir.constant(0 : i64) : i64
    %62 = llvm.getelementptr %50[%61] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %52, %62 : !llvm.ptr<ptr<i8>>
    %63 = llvm.mlir.constant(4 : i64) : i64
    %64 = llvm.call @omTensorCreateUntyped(%63) : (i64) -> !llvm.ptr<i8>
    %65 = llvm.mlir.constant(1 : i64) : i64
    %66 = llvm.extractvalue %46[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %67 = llvm.bitcast %66 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %68 = llvm.extractvalue %46[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %69 = llvm.bitcast %68 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%64, %65, %67, %69) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %70 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%64, %70) : (!llvm.ptr<i8>, i64) -> ()
    %71 = llvm.call @omTensorGetShape(%64) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %72 = llvm.call @omTensorGetStrides(%64) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %73 = llvm.mlir.constant(0 : i64) : i64
    %74 = llvm.extractvalue %46[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %75 = llvm.getelementptr %71[%73] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %74, %75 : !llvm.ptr<i64>
    %76 = llvm.extractvalue %46[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %77 = llvm.getelementptr %72[%73] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %76, %77 : !llvm.ptr<i64>
    %78 = llvm.mlir.constant(1 : i64) : i64
    %79 = llvm.extractvalue %46[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %80 = llvm.getelementptr %71[%78] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %79, %80 : !llvm.ptr<i64>
    %81 = llvm.extractvalue %46[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %82 = llvm.getelementptr %72[%78] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %81, %82 : !llvm.ptr<i64>
    %83 = llvm.mlir.constant(2 : i64) : i64
    %84 = llvm.extractvalue %46[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %85 = llvm.getelementptr %71[%83] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %84, %85 : !llvm.ptr<i64>
    %86 = llvm.extractvalue %46[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %87 = llvm.getelementptr %72[%83] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %86, %87 : !llvm.ptr<i64>
    %88 = llvm.mlir.constant(3 : i64) : i64
    %89 = llvm.extractvalue %46[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %90 = llvm.getelementptr %71[%88] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %89, %90 : !llvm.ptr<i64>
    %91 = llvm.extractvalue %46[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %92 = llvm.getelementptr %72[%88] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %91, %92 : !llvm.ptr<i64>
    %93 = llvm.mlir.constant(1 : i64) : i64
    %94 = llvm.getelementptr %50[%93] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %64, %94 : !llvm.ptr<ptr<i8>>
    %95 = llvm.call @omTensorListCreate(%50, %47, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %95 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<128 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<128 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

