module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v2_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v0_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1] , \22name\22 : \22v5_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1] , \22name\22 : \22v4_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.mlir.global internal constant @constant_5(dense<1> : tensor<3xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<3 x i64>
  llvm.mlir.global internal constant @constant_4(dense<-1> : tensor<i64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i64>
  llvm.mlir.global internal constant @constant_3(dense<1> : tensor<3xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<3 x i64>
  llvm.mlir.global internal constant @constant_1(dense<1> : tensor<i32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i32>
  llvm.mlir.global internal constant @constant_0(dense<-1> : tensor<i32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i32>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)> attributes {input_names = ["v2_0"], llvm.emit_c_interface, output_names = ["v0_0", "v5_0", "v4_0"]} {
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
    %13 = llvm.mlir.constant(2147483647 : i32) : i32
    %14 = llvm.mlir.constant(0 : i32) : i32
    %15 = llvm.mlir.constant(0 : index) : i64
    %16 = llvm.mlir.addressof @constant_0 : !llvm.ptr<array<1 x i32>>
    %17 = llvm.bitcast %16 : !llvm.ptr<array<1 x i32>> to !llvm.ptr<i32>
    %18 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64)>
    %19 = llvm.insertvalue %17, %18[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %20 = llvm.insertvalue %17, %19[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %21 = llvm.mlir.constant(0 : index) : i64
    %22 = llvm.insertvalue %21, %20[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %23 = llvm.mlir.addressof @constant_1 : !llvm.ptr<array<1 x i32>>
    %24 = llvm.bitcast %23 : !llvm.ptr<array<1 x i32>> to !llvm.ptr<i32>
    %25 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64)>
    %26 = llvm.insertvalue %24, %25[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %27 = llvm.insertvalue %24, %26[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %28 = llvm.mlir.constant(0 : index) : i64
    %29 = llvm.insertvalue %28, %27[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %30 = llvm.mlir.addressof @constant_3 : !llvm.ptr<array<3 x i64>>
    %31 = llvm.bitcast %30 : !llvm.ptr<array<3 x i64>> to !llvm.ptr<i64>
    %32 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %33 = llvm.insertvalue %31, %32[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %34 = llvm.insertvalue %31, %33[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %35 = llvm.mlir.constant(0 : index) : i64
    %36 = llvm.insertvalue %35, %34[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %37 = llvm.mlir.constant(3 : index) : i64
    %38 = llvm.insertvalue %37, %36[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %39 = llvm.mlir.constant(1 : index) : i64
    %40 = llvm.insertvalue %39, %38[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %41 = llvm.mlir.addressof @constant_4 : !llvm.ptr<array<1 x i64>>
    %42 = llvm.bitcast %41 : !llvm.ptr<array<1 x i64>> to !llvm.ptr<i64>
    %43 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64)>
    %44 = llvm.insertvalue %42, %43[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %45 = llvm.insertvalue %42, %44[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %46 = llvm.mlir.constant(0 : index) : i64
    %47 = llvm.insertvalue %46, %45[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %48 = llvm.mlir.addressof @constant_5 : !llvm.ptr<array<3 x i64>>
    %49 = llvm.bitcast %48 : !llvm.ptr<array<3 x i64>> to !llvm.ptr<i64>
    %50 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %51 = llvm.insertvalue %49, %50[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %52 = llvm.insertvalue %49, %51[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %53 = llvm.mlir.constant(0 : index) : i64
    %54 = llvm.insertvalue %53, %52[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %55 = llvm.mlir.constant(3 : index) : i64
    %56 = llvm.insertvalue %55, %54[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %57 = llvm.mlir.constant(1 : index) : i64
    %58 = llvm.insertvalue %57, %56[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %59 = llvm.mlir.constant(1 : index) : i64
    %60 = llvm.mlir.constant(1 : index) : i64
    %61 = llvm.mlir.constant(1 : index) : i64
    %62 = llvm.mlir.constant(1 : index) : i64
    %63 = llvm.mlir.constant(1 : index) : i64
    %64 = llvm.mlir.null : !llvm.ptr<i32>
    %65 = llvm.getelementptr %64[%59] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %66 = llvm.ptrtoint %65 : !llvm.ptr<i32> to i64
    %67 = llvm.mlir.constant(16 : index) : i64
    %68 = llvm.add %66, %67  : i64
    %69 = llvm.call @malloc(%68) : (i64) -> !llvm.ptr<i8>
    %70 = llvm.bitcast %69 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %71 = llvm.ptrtoint %70 : !llvm.ptr<i32> to i64
    %72 = llvm.mlir.constant(1 : index) : i64
    %73 = llvm.sub %67, %72  : i64
    %74 = llvm.add %71, %73  : i64
    %75 = llvm.urem %74, %67  : i64
    %76 = llvm.sub %74, %75  : i64
    %77 = llvm.inttoptr %76 : i64 to !llvm.ptr<i32>
    %78 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %79 = llvm.insertvalue %70, %78[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %80 = llvm.insertvalue %77, %79[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %81 = llvm.mlir.constant(0 : index) : i64
    %82 = llvm.insertvalue %81, %80[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %83 = llvm.insertvalue %59, %82[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %84 = llvm.insertvalue %60, %83[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %85 = llvm.insertvalue %61, %84[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %86 = llvm.insertvalue %62, %85[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %87 = llvm.insertvalue %60, %86[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %88 = llvm.insertvalue %61, %87[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %89 = llvm.insertvalue %62, %88[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %90 = llvm.insertvalue %63, %89[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %91 = llvm.mlir.constant(0 : index) : i64
    %92 = llvm.mlir.constant(1 : index) : i64
    %93 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%91 : i64)
  ^bb1(%94: i64):  // 2 preds: ^bb0, ^bb11
    %95 = llvm.icmp "slt" %94, %92 : i64
    llvm.cond_br %95, ^bb2, ^bb12
  ^bb2:  // pred: ^bb1
    %96 = llvm.mlir.constant(0 : index) : i64
    %97 = llvm.mlir.constant(1 : index) : i64
    %98 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%96 : i64)
  ^bb3(%99: i64):  // 2 preds: ^bb2, ^bb10
    %100 = llvm.icmp "slt" %99, %97 : i64
    llvm.cond_br %100, ^bb4, ^bb11
  ^bb4:  // pred: ^bb3
    %101 = llvm.mlir.constant(0 : index) : i64
    %102 = llvm.mlir.constant(1 : index) : i64
    %103 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%101 : i64)
  ^bb5(%104: i64):  // 2 preds: ^bb4, ^bb9
    %105 = llvm.icmp "slt" %104, %102 : i64
    llvm.cond_br %105, ^bb6, ^bb10
  ^bb6:  // pred: ^bb5
    %106 = llvm.mlir.constant(0 : index) : i64
    %107 = llvm.mlir.constant(1 : index) : i64
    %108 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%106 : i64)
  ^bb7(%109: i64):  // 2 preds: ^bb6, ^bb8
    %110 = llvm.icmp "slt" %109, %107 : i64
    llvm.cond_br %110, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %111 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %112 = llvm.add %94, %99  : i64
    %113 = llvm.add %112, %104  : i64
    %114 = llvm.add %113, %109  : i64
    %115 = llvm.getelementptr %111[%114] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %116 = llvm.load %115 : !llvm.ptr<i32>
    %117 = llvm.sub %14, %116  : i32
    %118 = llvm.extractvalue %90[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %119 = llvm.add %94, %99  : i64
    %120 = llvm.add %119, %104  : i64
    %121 = llvm.add %120, %109  : i64
    %122 = llvm.getelementptr %118[%121] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %117, %122 : !llvm.ptr<i32>
    %123 = llvm.add %109, %108  : i64
    llvm.br ^bb7(%123 : i64)
  ^bb9:  // pred: ^bb7
    %124 = llvm.add %104, %103  : i64
    llvm.br ^bb5(%124 : i64)
  ^bb10:  // pred: ^bb5
    %125 = llvm.add %99, %98  : i64
    llvm.br ^bb3(%125 : i64)
  ^bb11:  // pred: ^bb3
    %126 = llvm.add %94, %93  : i64
    llvm.br ^bb1(%126 : i64)
  ^bb12:  // pred: ^bb1
    %127 = llvm.mlir.constant(1 : index) : i64
    %128 = llvm.mlir.constant(1 : index) : i64
    %129 = llvm.mlir.constant(1 : index) : i64
    %130 = llvm.mlir.constant(1 : index) : i64
    %131 = llvm.mlir.constant(1 : index) : i64
    %132 = llvm.mlir.null : !llvm.ptr<i32>
    %133 = llvm.getelementptr %132[%127] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %134 = llvm.ptrtoint %133 : !llvm.ptr<i32> to i64
    %135 = llvm.mlir.constant(16 : index) : i64
    %136 = llvm.add %134, %135  : i64
    %137 = llvm.call @malloc(%136) : (i64) -> !llvm.ptr<i8>
    %138 = llvm.bitcast %137 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %139 = llvm.ptrtoint %138 : !llvm.ptr<i32> to i64
    %140 = llvm.mlir.constant(1 : index) : i64
    %141 = llvm.sub %135, %140  : i64
    %142 = llvm.add %139, %141  : i64
    %143 = llvm.urem %142, %135  : i64
    %144 = llvm.sub %142, %143  : i64
    %145 = llvm.inttoptr %144 : i64 to !llvm.ptr<i32>
    %146 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %147 = llvm.insertvalue %138, %146[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %148 = llvm.insertvalue %145, %147[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %149 = llvm.mlir.constant(0 : index) : i64
    %150 = llvm.insertvalue %149, %148[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %151 = llvm.insertvalue %127, %150[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %152 = llvm.insertvalue %128, %151[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %153 = llvm.insertvalue %129, %152[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %154 = llvm.insertvalue %130, %153[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %155 = llvm.insertvalue %128, %154[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %156 = llvm.insertvalue %129, %155[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %157 = llvm.insertvalue %130, %156[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %158 = llvm.insertvalue %131, %157[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %159 = llvm.mlir.constant(0 : index) : i64
    %160 = llvm.mlir.constant(1 : index) : i64
    %161 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%159 : i64)
  ^bb13(%162: i64):  // 2 preds: ^bb12, ^bb23
    %163 = llvm.icmp "slt" %162, %160 : i64
    llvm.cond_br %163, ^bb14, ^bb24
  ^bb14:  // pred: ^bb13
    %164 = llvm.mlir.constant(0 : index) : i64
    %165 = llvm.mlir.constant(1 : index) : i64
    %166 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb15(%164 : i64)
  ^bb15(%167: i64):  // 2 preds: ^bb14, ^bb22
    %168 = llvm.icmp "slt" %167, %165 : i64
    llvm.cond_br %168, ^bb16, ^bb23
  ^bb16:  // pred: ^bb15
    %169 = llvm.mlir.constant(0 : index) : i64
    %170 = llvm.mlir.constant(1 : index) : i64
    %171 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb17(%169 : i64)
  ^bb17(%172: i64):  // 2 preds: ^bb16, ^bb21
    %173 = llvm.icmp "slt" %172, %170 : i64
    llvm.cond_br %173, ^bb18, ^bb22
  ^bb18:  // pred: ^bb17
    %174 = llvm.mlir.constant(0 : index) : i64
    %175 = llvm.mlir.constant(1 : index) : i64
    %176 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%174 : i64)
  ^bb19(%177: i64):  // 2 preds: ^bb18, ^bb20
    %178 = llvm.icmp "slt" %177, %175 : i64
    llvm.cond_br %178, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %179 = llvm.extractvalue %90[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %180 = llvm.add %162, %167  : i64
    %181 = llvm.add %180, %172  : i64
    %182 = llvm.add %181, %177  : i64
    %183 = llvm.getelementptr %179[%182] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %184 = llvm.load %183 : !llvm.ptr<i32>
    %185 = llvm.extractvalue %22[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %186 = llvm.load %185 : !llvm.ptr<i32>
    %187 = llvm.icmp "slt" %184, %186 : i32
    %188 = llvm.select %187, %186, %184 : i1, i32
    %189 = llvm.extractvalue %29[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %190 = llvm.load %189 : !llvm.ptr<i32>
    %191 = llvm.icmp "slt" %188, %190 : i32
    %192 = llvm.select %191, %188, %190 : i1, i32
    %193 = llvm.extractvalue %158[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %194 = llvm.add %162, %167  : i64
    %195 = llvm.add %194, %172  : i64
    %196 = llvm.add %195, %177  : i64
    %197 = llvm.getelementptr %193[%196] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %192, %197 : !llvm.ptr<i32>
    %198 = llvm.add %177, %176  : i64
    llvm.br ^bb19(%198 : i64)
  ^bb21:  // pred: ^bb19
    %199 = llvm.add %172, %171  : i64
    llvm.br ^bb17(%199 : i64)
  ^bb22:  // pred: ^bb17
    %200 = llvm.add %167, %166  : i64
    llvm.br ^bb15(%200 : i64)
  ^bb23:  // pred: ^bb15
    %201 = llvm.add %162, %161  : i64
    llvm.br ^bb13(%201 : i64)
  ^bb24:  // pred: ^bb13
    %202 = llvm.mlir.constant(1 : index) : i64
    %203 = llvm.mlir.constant(1 : index) : i64
    %204 = llvm.mlir.constant(1 : index) : i64
    %205 = llvm.mlir.constant(1 : index) : i64
    %206 = llvm.mlir.null : !llvm.ptr<i32>
    %207 = llvm.getelementptr %206[%202] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %208 = llvm.ptrtoint %207 : !llvm.ptr<i32> to i64
    %209 = llvm.mlir.constant(16 : index) : i64
    %210 = llvm.add %208, %209  : i64
    %211 = llvm.call @malloc(%210) : (i64) -> !llvm.ptr<i8>
    %212 = llvm.bitcast %211 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %213 = llvm.ptrtoint %212 : !llvm.ptr<i32> to i64
    %214 = llvm.mlir.constant(1 : index) : i64
    %215 = llvm.sub %209, %214  : i64
    %216 = llvm.add %213, %215  : i64
    %217 = llvm.urem %216, %209  : i64
    %218 = llvm.sub %216, %217  : i64
    %219 = llvm.inttoptr %218 : i64 to !llvm.ptr<i32>
    %220 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>
    %221 = llvm.insertvalue %212, %220[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %222 = llvm.insertvalue %219, %221[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %223 = llvm.mlir.constant(0 : index) : i64
    %224 = llvm.insertvalue %223, %222[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %225 = llvm.insertvalue %202, %224[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %226 = llvm.insertvalue %203, %225[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %227 = llvm.insertvalue %204, %226[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %228 = llvm.insertvalue %203, %227[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %229 = llvm.insertvalue %204, %228[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %230 = llvm.insertvalue %205, %229[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %231 = llvm.mlir.constant(0 : index) : i64
    %232 = llvm.mlir.constant(1 : index) : i64
    %233 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb25(%231 : i64)
  ^bb25(%234: i64):  // 2 preds: ^bb24, ^bb32
    %235 = llvm.icmp "slt" %234, %232 : i64
    llvm.cond_br %235, ^bb26, ^bb33
  ^bb26:  // pred: ^bb25
    %236 = llvm.mlir.constant(0 : index) : i64
    %237 = llvm.mlir.constant(1 : index) : i64
    %238 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb27(%236 : i64)
  ^bb27(%239: i64):  // 2 preds: ^bb26, ^bb31
    %240 = llvm.icmp "slt" %239, %237 : i64
    llvm.cond_br %240, ^bb28, ^bb32
  ^bb28:  // pred: ^bb27
    %241 = llvm.mlir.constant(0 : index) : i64
    %242 = llvm.mlir.constant(1 : index) : i64
    %243 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb29(%241 : i64)
  ^bb29(%244: i64):  // 2 preds: ^bb28, ^bb30
    %245 = llvm.icmp "slt" %244, %242 : i64
    llvm.cond_br %245, ^bb30, ^bb31
  ^bb30:  // pred: ^bb29
    %246 = llvm.extractvalue %230[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %247 = llvm.add %234, %239  : i64
    %248 = llvm.add %247, %244  : i64
    %249 = llvm.getelementptr %246[%248] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %13, %249 : !llvm.ptr<i32>
    %250 = llvm.add %244, %243  : i64
    llvm.br ^bb29(%250 : i64)
  ^bb31:  // pred: ^bb29
    %251 = llvm.add %239, %238  : i64
    llvm.br ^bb27(%251 : i64)
  ^bb32:  // pred: ^bb27
    %252 = llvm.add %234, %233  : i64
    llvm.br ^bb25(%252 : i64)
  ^bb33:  // pred: ^bb25
    %253 = llvm.mlir.constant(0 : index) : i64
    %254 = llvm.mlir.constant(1 : index) : i64
    %255 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb34(%253 : i64)
  ^bb34(%256: i64):  // 2 preds: ^bb33, ^bb44
    %257 = llvm.icmp "slt" %256, %254 : i64
    llvm.cond_br %257, ^bb35, ^bb45
  ^bb35:  // pred: ^bb34
    %258 = llvm.mlir.constant(0 : index) : i64
    %259 = llvm.mlir.constant(1 : index) : i64
    %260 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb36(%258 : i64)
  ^bb36(%261: i64):  // 2 preds: ^bb35, ^bb43
    %262 = llvm.icmp "slt" %261, %259 : i64
    llvm.cond_br %262, ^bb37, ^bb44
  ^bb37:  // pred: ^bb36
    %263 = llvm.mlir.constant(0 : index) : i64
    %264 = llvm.mlir.constant(1 : index) : i64
    %265 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb38(%263 : i64)
  ^bb38(%266: i64):  // 2 preds: ^bb37, ^bb42
    %267 = llvm.icmp "slt" %266, %264 : i64
    llvm.cond_br %267, ^bb39, ^bb43
  ^bb39:  // pred: ^bb38
    %268 = llvm.mlir.constant(0 : index) : i64
    %269 = llvm.mlir.constant(1 : index) : i64
    %270 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb40(%268 : i64)
  ^bb40(%271: i64):  // 2 preds: ^bb39, ^bb41
    %272 = llvm.icmp "slt" %271, %269 : i64
    llvm.cond_br %272, ^bb41, ^bb42
  ^bb41:  // pred: ^bb40
    %273 = llvm.extractvalue %90[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %274 = llvm.add %256, %261  : i64
    %275 = llvm.add %274, %266  : i64
    %276 = llvm.add %275, %271  : i64
    %277 = llvm.getelementptr %273[%276] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %278 = llvm.load %277 : !llvm.ptr<i32>
    %279 = llvm.extractvalue %230[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %280 = llvm.add %256, %266  : i64
    %281 = llvm.add %280, %271  : i64
    %282 = llvm.getelementptr %279[%281] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %283 = llvm.load %282 : !llvm.ptr<i32>
    %284 = llvm.icmp "slt" %283, %278 : i32
    %285 = llvm.select %284, %283, %278 : i1, i32
    %286 = llvm.extractvalue %230[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %287 = llvm.add %256, %266  : i64
    %288 = llvm.add %287, %271  : i64
    %289 = llvm.getelementptr %286[%288] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %285, %289 : !llvm.ptr<i32>
    %290 = llvm.add %271, %270  : i64
    llvm.br ^bb40(%290 : i64)
  ^bb42:  // pred: ^bb40
    %291 = llvm.add %266, %265  : i64
    llvm.br ^bb38(%291 : i64)
  ^bb43:  // pred: ^bb38
    %292 = llvm.add %261, %260  : i64
    llvm.br ^bb36(%292 : i64)
  ^bb44:  // pred: ^bb36
    %293 = llvm.add %256, %255  : i64
    llvm.br ^bb34(%293 : i64)
  ^bb45:  // pred: ^bb34
    %294 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %295 = llvm.extractvalue %230[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %296 = llvm.extractvalue %230[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %297 = llvm.insertvalue %295, %294[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %298 = llvm.insertvalue %296, %297[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %299 = llvm.mlir.constant(0 : index) : i64
    %300 = llvm.insertvalue %299, %298[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %301 = llvm.mlir.constant(1 : index) : i64
    %302 = llvm.insertvalue %301, %300[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %303 = llvm.mlir.constant(1 : index) : i64
    %304 = llvm.insertvalue %303, %302[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %305 = llvm.mlir.constant(3 : index) : i64
    %306 = llvm.mlir.constant(1 : index) : i64
    %307 = llvm.mlir.null : !llvm.ptr<i64>
    %308 = llvm.getelementptr %307[%305] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %309 = llvm.ptrtoint %308 : !llvm.ptr<i64> to i64
    %310 = llvm.mlir.constant(16 : index) : i64
    %311 = llvm.add %309, %310  : i64
    %312 = llvm.call @malloc(%311) : (i64) -> !llvm.ptr<i8>
    %313 = llvm.bitcast %312 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %314 = llvm.ptrtoint %313 : !llvm.ptr<i64> to i64
    %315 = llvm.mlir.constant(1 : index) : i64
    %316 = llvm.sub %310, %315  : i64
    %317 = llvm.add %314, %316  : i64
    %318 = llvm.urem %317, %310  : i64
    %319 = llvm.sub %317, %318  : i64
    %320 = llvm.inttoptr %319 : i64 to !llvm.ptr<i64>
    %321 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %322 = llvm.insertvalue %313, %321[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %323 = llvm.insertvalue %320, %322[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %324 = llvm.mlir.constant(0 : index) : i64
    %325 = llvm.insertvalue %324, %323[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %326 = llvm.insertvalue %305, %325[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %327 = llvm.insertvalue %306, %326[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %328 = llvm.mlir.constant(0 : index) : i64
    %329 = llvm.mlir.constant(3 : index) : i64
    %330 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb46(%328 : i64)
  ^bb46(%331: i64):  // 2 preds: ^bb45, ^bb47
    %332 = llvm.icmp "slt" %331, %329 : i64
    llvm.cond_br %332, ^bb47, ^bb48
  ^bb47:  // pred: ^bb46
    %333 = llvm.extractvalue %327[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %334 = llvm.getelementptr %333[%331] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %12, %334 : !llvm.ptr<i64>
    %335 = llvm.add %331, %330  : i64
    llvm.br ^bb46(%335 : i64)
  ^bb48:  // pred: ^bb46
    %336 = llvm.mlir.constant(3 : index) : i64
    %337 = llvm.mlir.constant(1 : index) : i64
    %338 = llvm.mlir.null : !llvm.ptr<i64>
    %339 = llvm.getelementptr %338[%336] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %340 = llvm.ptrtoint %339 : !llvm.ptr<i64> to i64
    %341 = llvm.mlir.constant(16 : index) : i64
    %342 = llvm.add %340, %341  : i64
    %343 = llvm.call @malloc(%342) : (i64) -> !llvm.ptr<i8>
    %344 = llvm.bitcast %343 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %345 = llvm.ptrtoint %344 : !llvm.ptr<i64> to i64
    %346 = llvm.mlir.constant(1 : index) : i64
    %347 = llvm.sub %341, %346  : i64
    %348 = llvm.add %345, %347  : i64
    %349 = llvm.urem %348, %341  : i64
    %350 = llvm.sub %348, %349  : i64
    %351 = llvm.inttoptr %350 : i64 to !llvm.ptr<i64>
    %352 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %353 = llvm.insertvalue %344, %352[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %354 = llvm.insertvalue %351, %353[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %355 = llvm.mlir.constant(0 : index) : i64
    %356 = llvm.insertvalue %355, %354[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %357 = llvm.insertvalue %336, %356[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %358 = llvm.insertvalue %337, %357[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %359 = llvm.mlir.constant(0 : index) : i64
    %360 = llvm.mlir.constant(3 : index) : i64
    %361 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb49(%359 : i64)
  ^bb49(%362: i64):  // 2 preds: ^bb48, ^bb50
    %363 = llvm.icmp "slt" %362, %360 : i64
    llvm.cond_br %363, ^bb50, ^bb51
  ^bb50:  // pred: ^bb49
    %364 = llvm.extractvalue %327[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %365 = llvm.getelementptr %364[%362] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %366 = llvm.load %365 : !llvm.ptr<i64>
    %367 = llvm.extractvalue %47[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %368 = llvm.load %367 : !llvm.ptr<i64>
    %369 = llvm.mul %366, %368  : i64
    %370 = llvm.extractvalue %358[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %371 = llvm.getelementptr %370[%362] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %369, %371 : !llvm.ptr<i64>
    %372 = llvm.add %362, %361  : i64
    llvm.br ^bb49(%372 : i64)
  ^bb51:  // pred: ^bb49
    %373 = llvm.mlir.constant(3 : index) : i64
    %374 = llvm.mlir.constant(1 : index) : i64
    %375 = llvm.mlir.null : !llvm.ptr<i1>
    %376 = llvm.getelementptr %375[%373] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %377 = llvm.ptrtoint %376 : !llvm.ptr<i1> to i64
    %378 = llvm.mlir.constant(16 : index) : i64
    %379 = llvm.add %377, %378  : i64
    %380 = llvm.call @malloc(%379) : (i64) -> !llvm.ptr<i8>
    %381 = llvm.bitcast %380 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %382 = llvm.ptrtoint %381 : !llvm.ptr<i1> to i64
    %383 = llvm.mlir.constant(1 : index) : i64
    %384 = llvm.sub %378, %383  : i64
    %385 = llvm.add %382, %384  : i64
    %386 = llvm.urem %385, %378  : i64
    %387 = llvm.sub %385, %386  : i64
    %388 = llvm.inttoptr %387 : i64 to !llvm.ptr<i1>
    %389 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %390 = llvm.insertvalue %381, %389[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %391 = llvm.insertvalue %388, %390[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %392 = llvm.mlir.constant(0 : index) : i64
    %393 = llvm.insertvalue %392, %391[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %394 = llvm.insertvalue %373, %393[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %395 = llvm.insertvalue %374, %394[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %396 = llvm.mlir.constant(0 : index) : i64
    %397 = llvm.mlir.constant(3 : index) : i64
    %398 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb52(%396 : i64)
  ^bb52(%399: i64):  // 2 preds: ^bb51, ^bb53
    %400 = llvm.icmp "slt" %399, %397 : i64
    llvm.cond_br %400, ^bb53, ^bb54
  ^bb53:  // pred: ^bb52
    %401 = llvm.extractvalue %40[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %402 = llvm.getelementptr %401[%399] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %403 = llvm.load %402 : !llvm.ptr<i64>
    %404 = llvm.extractvalue %358[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %405 = llvm.getelementptr %404[%399] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %406 = llvm.load %405 : !llvm.ptr<i64>
    %407 = llvm.icmp "eq" %403, %406 : i64
    %408 = llvm.extractvalue %395[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %409 = llvm.getelementptr %408[%399] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %407, %409 : !llvm.ptr<i1>
    %410 = llvm.add %399, %398  : i64
    llvm.br ^bb52(%410 : i64)
  ^bb54:  // pred: ^bb52
    %411 = llvm.mlir.constant(3 : index) : i64
    %412 = llvm.mlir.constant(1 : index) : i64
    %413 = llvm.mlir.null : !llvm.ptr<i64>
    %414 = llvm.getelementptr %413[%411] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %415 = llvm.ptrtoint %414 : !llvm.ptr<i64> to i64
    %416 = llvm.mlir.constant(16 : index) : i64
    %417 = llvm.add %415, %416  : i64
    %418 = llvm.call @malloc(%417) : (i64) -> !llvm.ptr<i8>
    %419 = llvm.bitcast %418 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %420 = llvm.ptrtoint %419 : !llvm.ptr<i64> to i64
    %421 = llvm.mlir.constant(1 : index) : i64
    %422 = llvm.sub %416, %421  : i64
    %423 = llvm.add %420, %422  : i64
    %424 = llvm.urem %423, %416  : i64
    %425 = llvm.sub %423, %424  : i64
    %426 = llvm.inttoptr %425 : i64 to !llvm.ptr<i64>
    %427 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %428 = llvm.insertvalue %419, %427[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %429 = llvm.insertvalue %426, %428[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %430 = llvm.mlir.constant(0 : index) : i64
    %431 = llvm.insertvalue %430, %429[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %432 = llvm.insertvalue %411, %431[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %433 = llvm.insertvalue %412, %432[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %434 = llvm.mlir.constant(0 : index) : i64
    %435 = llvm.mlir.constant(3 : index) : i64
    %436 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb55(%434 : i64)
  ^bb55(%437: i64):  // 2 preds: ^bb54, ^bb56
    %438 = llvm.icmp "slt" %437, %435 : i64
    llvm.cond_br %438, ^bb56, ^bb57
  ^bb56:  // pred: ^bb55
    %439 = llvm.extractvalue %395[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %440 = llvm.getelementptr %439[%437] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %441 = llvm.load %440 : !llvm.ptr<i1>
    %442 = llvm.extractvalue %327[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %443 = llvm.getelementptr %442[%437] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %444 = llvm.load %443 : !llvm.ptr<i64>
    %445 = llvm.extractvalue %58[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %446 = llvm.getelementptr %445[%437] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %447 = llvm.load %446 : !llvm.ptr<i64>
    %448 = llvm.select %441, %444, %447 : i1, i64
    %449 = llvm.extractvalue %433[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %450 = llvm.getelementptr %449[%437] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %448, %450 : !llvm.ptr<i64>
    %451 = llvm.add %437, %436  : i64
    llvm.br ^bb55(%451 : i64)
  ^bb57:  // pred: ^bb55
    %452 = llvm.mlir.constant(1 : index) : i64
    %453 = llvm.mlir.constant(1 : index) : i64
    %454 = llvm.mlir.constant(1 : index) : i64
    %455 = llvm.mlir.constant(1 : index) : i64
    %456 = llvm.mlir.null : !llvm.ptr<i32>
    %457 = llvm.getelementptr %456[%452] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %458 = llvm.ptrtoint %457 : !llvm.ptr<i32> to i64
    %459 = llvm.mlir.constant(16 : index) : i64
    %460 = llvm.add %458, %459  : i64
    %461 = llvm.call @malloc(%460) : (i64) -> !llvm.ptr<i8>
    %462 = llvm.bitcast %461 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %463 = llvm.ptrtoint %462 : !llvm.ptr<i32> to i64
    %464 = llvm.mlir.constant(1 : index) : i64
    %465 = llvm.sub %459, %464  : i64
    %466 = llvm.add %463, %465  : i64
    %467 = llvm.urem %466, %459  : i64
    %468 = llvm.sub %466, %467  : i64
    %469 = llvm.inttoptr %468 : i64 to !llvm.ptr<i32>
    %470 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>
    %471 = llvm.insertvalue %462, %470[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %472 = llvm.insertvalue %469, %471[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %473 = llvm.mlir.constant(0 : index) : i64
    %474 = llvm.insertvalue %473, %472[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %475 = llvm.insertvalue %452, %474[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %476 = llvm.insertvalue %453, %475[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %477 = llvm.insertvalue %454, %476[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %478 = llvm.insertvalue %453, %477[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %479 = llvm.insertvalue %454, %478[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %480 = llvm.insertvalue %455, %479[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %481 = llvm.mlir.constant(0 : index) : i64
    %482 = llvm.mlir.constant(1 : index) : i64
    %483 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb58(%481 : i64)
  ^bb58(%484: i64):  // 2 preds: ^bb57, ^bb65
    %485 = llvm.icmp "slt" %484, %482 : i64
    llvm.cond_br %485, ^bb59, ^bb66
  ^bb59:  // pred: ^bb58
    %486 = llvm.mlir.constant(0 : index) : i64
    %487 = llvm.mlir.constant(1 : index) : i64
    %488 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb60(%486 : i64)
  ^bb60(%489: i64):  // 2 preds: ^bb59, ^bb64
    %490 = llvm.icmp "slt" %489, %487 : i64
    llvm.cond_br %490, ^bb61, ^bb65
  ^bb61:  // pred: ^bb60
    %491 = llvm.mlir.constant(0 : index) : i64
    %492 = llvm.mlir.constant(1 : index) : i64
    %493 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb62(%491 : i64)
  ^bb62(%494: i64):  // 2 preds: ^bb61, ^bb63
    %495 = llvm.icmp "slt" %494, %492 : i64
    llvm.cond_br %495, ^bb63, ^bb64
  ^bb63:  // pred: ^bb62
    %496 = llvm.extractvalue %230[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %497 = llvm.add %15, %15  : i64
    %498 = llvm.add %497, %15  : i64
    %499 = llvm.getelementptr %496[%498] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %500 = llvm.load %499 : !llvm.ptr<i32>
    %501 = llvm.extractvalue %480[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %502 = llvm.add %484, %489  : i64
    %503 = llvm.add %502, %494  : i64
    %504 = llvm.getelementptr %501[%503] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %500, %504 : !llvm.ptr<i32>
    %505 = llvm.add %494, %493  : i64
    llvm.br ^bb62(%505 : i64)
  ^bb64:  // pred: ^bb62
    %506 = llvm.add %489, %488  : i64
    llvm.br ^bb60(%506 : i64)
  ^bb65:  // pred: ^bb60
    %507 = llvm.add %484, %483  : i64
    llvm.br ^bb58(%507 : i64)
  ^bb66:  // pred: ^bb58
    %508 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)>
    %509 = llvm.insertvalue %158, %508[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)> 
    %510 = llvm.insertvalue %304, %509[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)> 
    %511 = llvm.insertvalue %480, %510[2] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)> 
    llvm.return %511 : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) attributes {input_names = ["v2_0"], llvm.emit_c_interface, output_names = ["v0_0", "v5_0", "v4_0"]} {
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
    %12 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)>
    llvm.store %12, %arg0 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)>>
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
    llvm.call @_mlir_ciface_main_graph(%2, %6) : (!llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) -> ()
    %44 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)>>
    %45 = llvm.extractvalue %44[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)> 
    %46 = llvm.extractvalue %44[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)> 
    %47 = llvm.extractvalue %44[2] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)> 
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
    %84 = llvm.mlir.constant(1 : i64) : i64
    %85 = llvm.call @omTensorCreateUntyped(%84) : (i64) -> !llvm.ptr<i8>
    %86 = llvm.mlir.constant(1 : i64) : i64
    %87 = llvm.extractvalue %46[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %88 = llvm.bitcast %87 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %89 = llvm.extractvalue %46[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %90 = llvm.bitcast %89 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%85, %86, %88, %90) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %91 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%85, %91) : (!llvm.ptr<i8>, i64) -> ()
    %92 = llvm.call @omTensorGetShape(%85) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %93 = llvm.call @omTensorGetStrides(%85) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %94 = llvm.mlir.constant(0 : i64) : i64
    %95 = llvm.extractvalue %46[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %96 = llvm.getelementptr %92[%94] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %95, %96 : !llvm.ptr<i64>
    %97 = llvm.extractvalue %46[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %98 = llvm.getelementptr %93[%94] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %97, %98 : !llvm.ptr<i64>
    %99 = llvm.mlir.constant(1 : i64) : i64
    %100 = llvm.getelementptr %51[%99] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %85, %100 : !llvm.ptr<ptr<i8>>
    %101 = llvm.mlir.constant(3 : i64) : i64
    %102 = llvm.call @omTensorCreateUntyped(%101) : (i64) -> !llvm.ptr<i8>
    %103 = llvm.mlir.constant(1 : i64) : i64
    %104 = llvm.extractvalue %47[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %105 = llvm.bitcast %104 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %106 = llvm.extractvalue %47[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %107 = llvm.bitcast %106 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%102, %103, %105, %107) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %108 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%102, %108) : (!llvm.ptr<i8>, i64) -> ()
    %109 = llvm.call @omTensorGetShape(%102) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %110 = llvm.call @omTensorGetStrides(%102) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %111 = llvm.mlir.constant(0 : i64) : i64
    %112 = llvm.extractvalue %47[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %113 = llvm.getelementptr %109[%111] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %112, %113 : !llvm.ptr<i64>
    %114 = llvm.extractvalue %47[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %115 = llvm.getelementptr %110[%111] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %114, %115 : !llvm.ptr<i64>
    %116 = llvm.mlir.constant(1 : i64) : i64
    %117 = llvm.extractvalue %47[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %118 = llvm.getelementptr %109[%116] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %117, %118 : !llvm.ptr<i64>
    %119 = llvm.extractvalue %47[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %120 = llvm.getelementptr %110[%116] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %119, %120 : !llvm.ptr<i64>
    %121 = llvm.mlir.constant(2 : i64) : i64
    %122 = llvm.extractvalue %47[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %123 = llvm.getelementptr %109[%121] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %122, %123 : !llvm.ptr<i64>
    %124 = llvm.extractvalue %47[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %125 = llvm.getelementptr %110[%121] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %124, %125 : !llvm.ptr<i64>
    %126 = llvm.mlir.constant(2 : i64) : i64
    %127 = llvm.getelementptr %51[%126] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %102, %127 : !llvm.ptr<ptr<i8>>
    %128 = llvm.call @omTensorListCreate(%51, %48, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %128 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<195 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<195 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

