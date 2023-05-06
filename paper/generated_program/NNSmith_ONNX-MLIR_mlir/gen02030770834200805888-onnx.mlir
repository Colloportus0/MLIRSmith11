module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v2_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v0_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1] , \22name\22 : \22v1_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.mlir.global internal constant @constant_5(dense<1> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.mlir.global internal constant @constant_4(dense<-1> : tensor<i64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i64>
  llvm.mlir.global internal constant @constant_3(dense<1> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.mlir.global internal constant @constant_1(dense<1> : tensor<i32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i32>
  llvm.mlir.global internal constant @constant_0(dense<-1> : tensor<i32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i32>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)> attributes {input_names = ["v2_0"], llvm.emit_c_interface, output_names = ["v0_0", "v1_0"]} {
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
    %12 = llvm.mlir.constant(2147483647 : i32) : i32
    %13 = llvm.mlir.constant(1 : i64) : i64
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
    %30 = llvm.mlir.addressof @constant_3 : !llvm.ptr<array<4 x i64>>
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
    %41 = llvm.mlir.addressof @constant_4 : !llvm.ptr<array<1 x i64>>
    %42 = llvm.bitcast %41 : !llvm.ptr<array<1 x i64>> to !llvm.ptr<i64>
    %43 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64)>
    %44 = llvm.insertvalue %42, %43[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %45 = llvm.insertvalue %42, %44[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %46 = llvm.mlir.constant(0 : index) : i64
    %47 = llvm.insertvalue %46, %45[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %48 = llvm.mlir.addressof @constant_5 : !llvm.ptr<array<4 x i64>>
    %49 = llvm.bitcast %48 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %50 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %51 = llvm.insertvalue %49, %50[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %52 = llvm.insertvalue %49, %51[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %53 = llvm.mlir.constant(0 : index) : i64
    %54 = llvm.insertvalue %53, %52[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %55 = llvm.mlir.constant(4 : index) : i64
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
    %117 = llvm.extractvalue %22[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %118 = llvm.load %117 : !llvm.ptr<i32>
    %119 = llvm.icmp "slt" %116, %118 : i32
    %120 = llvm.select %119, %118, %116 : i1, i32
    %121 = llvm.extractvalue %29[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %122 = llvm.load %121 : !llvm.ptr<i32>
    %123 = llvm.icmp "slt" %120, %122 : i32
    %124 = llvm.select %123, %120, %122 : i1, i32
    %125 = llvm.extractvalue %90[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %126 = llvm.add %94, %99  : i64
    %127 = llvm.add %126, %104  : i64
    %128 = llvm.add %127, %109  : i64
    %129 = llvm.getelementptr %125[%128] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %124, %129 : !llvm.ptr<i32>
    %130 = llvm.add %109, %108  : i64
    llvm.br ^bb7(%130 : i64)
  ^bb9:  // pred: ^bb7
    %131 = llvm.add %104, %103  : i64
    llvm.br ^bb5(%131 : i64)
  ^bb10:  // pred: ^bb5
    %132 = llvm.add %99, %98  : i64
    llvm.br ^bb3(%132 : i64)
  ^bb11:  // pred: ^bb3
    %133 = llvm.add %94, %93  : i64
    llvm.br ^bb1(%133 : i64)
  ^bb12:  // pred: ^bb1
    %134 = llvm.mlir.constant(1 : index) : i64
    %135 = llvm.mlir.constant(1 : index) : i64
    %136 = llvm.mlir.constant(1 : index) : i64
    %137 = llvm.mlir.constant(1 : index) : i64
    %138 = llvm.mlir.constant(1 : index) : i64
    %139 = llvm.mlir.null : !llvm.ptr<i32>
    %140 = llvm.getelementptr %139[%134] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %141 = llvm.ptrtoint %140 : !llvm.ptr<i32> to i64
    %142 = llvm.mlir.constant(16 : index) : i64
    %143 = llvm.add %141, %142  : i64
    %144 = llvm.call @malloc(%143) : (i64) -> !llvm.ptr<i8>
    %145 = llvm.bitcast %144 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %146 = llvm.ptrtoint %145 : !llvm.ptr<i32> to i64
    %147 = llvm.mlir.constant(1 : index) : i64
    %148 = llvm.sub %142, %147  : i64
    %149 = llvm.add %146, %148  : i64
    %150 = llvm.urem %149, %142  : i64
    %151 = llvm.sub %149, %150  : i64
    %152 = llvm.inttoptr %151 : i64 to !llvm.ptr<i32>
    %153 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %154 = llvm.insertvalue %145, %153[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %155 = llvm.insertvalue %152, %154[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %156 = llvm.mlir.constant(0 : index) : i64
    %157 = llvm.insertvalue %156, %155[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %158 = llvm.insertvalue %134, %157[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %159 = llvm.insertvalue %135, %158[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %160 = llvm.insertvalue %136, %159[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %161 = llvm.insertvalue %137, %160[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %162 = llvm.insertvalue %135, %161[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %163 = llvm.insertvalue %136, %162[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %164 = llvm.insertvalue %137, %163[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %165 = llvm.insertvalue %138, %164[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %166 = llvm.mlir.constant(0 : index) : i64
    %167 = llvm.mlir.constant(1 : index) : i64
    %168 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%166 : i64)
  ^bb13(%169: i64):  // 2 preds: ^bb12, ^bb23
    %170 = llvm.icmp "slt" %169, %167 : i64
    llvm.cond_br %170, ^bb14, ^bb24
  ^bb14:  // pred: ^bb13
    %171 = llvm.mlir.constant(0 : index) : i64
    %172 = llvm.mlir.constant(1 : index) : i64
    %173 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb15(%171 : i64)
  ^bb15(%174: i64):  // 2 preds: ^bb14, ^bb22
    %175 = llvm.icmp "slt" %174, %172 : i64
    llvm.cond_br %175, ^bb16, ^bb23
  ^bb16:  // pred: ^bb15
    %176 = llvm.mlir.constant(0 : index) : i64
    %177 = llvm.mlir.constant(1 : index) : i64
    %178 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb17(%176 : i64)
  ^bb17(%179: i64):  // 2 preds: ^bb16, ^bb21
    %180 = llvm.icmp "slt" %179, %177 : i64
    llvm.cond_br %180, ^bb18, ^bb22
  ^bb18:  // pred: ^bb17
    %181 = llvm.mlir.constant(0 : index) : i64
    %182 = llvm.mlir.constant(1 : index) : i64
    %183 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%181 : i64)
  ^bb19(%184: i64):  // 2 preds: ^bb18, ^bb20
    %185 = llvm.icmp "slt" %184, %182 : i64
    llvm.cond_br %185, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %186 = llvm.extractvalue %90[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %187 = llvm.add %169, %174  : i64
    %188 = llvm.add %187, %179  : i64
    %189 = llvm.add %188, %184  : i64
    %190 = llvm.getelementptr %186[%189] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %191 = llvm.load %190 : !llvm.ptr<i32>
    %192 = llvm.extractvalue %165[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %193 = llvm.add %169, %174  : i64
    %194 = llvm.add %193, %179  : i64
    %195 = llvm.add %194, %184  : i64
    %196 = llvm.getelementptr %192[%195] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %191, %196 : !llvm.ptr<i32>
    %197 = llvm.add %184, %183  : i64
    llvm.br ^bb19(%197 : i64)
  ^bb21:  // pred: ^bb19
    %198 = llvm.add %179, %178  : i64
    llvm.br ^bb17(%198 : i64)
  ^bb22:  // pred: ^bb17
    %199 = llvm.add %174, %173  : i64
    llvm.br ^bb15(%199 : i64)
  ^bb23:  // pred: ^bb15
    %200 = llvm.add %169, %168  : i64
    llvm.br ^bb13(%200 : i64)
  ^bb24:  // pred: ^bb13
    %201 = llvm.mlir.constant(1 : index) : i64
    %202 = llvm.mlir.constant(1 : index) : i64
    %203 = llvm.mlir.constant(1 : index) : i64
    %204 = llvm.mlir.constant(1 : index) : i64
    %205 = llvm.mlir.constant(1 : index) : i64
    %206 = llvm.mlir.null : !llvm.ptr<i32>
    %207 = llvm.getelementptr %206[%201] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
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
    %220 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %221 = llvm.insertvalue %212, %220[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %222 = llvm.insertvalue %219, %221[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %223 = llvm.mlir.constant(0 : index) : i64
    %224 = llvm.insertvalue %223, %222[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %225 = llvm.insertvalue %201, %224[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %226 = llvm.insertvalue %202, %225[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %227 = llvm.insertvalue %203, %226[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %228 = llvm.insertvalue %204, %227[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %229 = llvm.insertvalue %202, %228[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %230 = llvm.insertvalue %203, %229[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %231 = llvm.insertvalue %204, %230[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %232 = llvm.insertvalue %205, %231[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %233 = llvm.mlir.constant(0 : index) : i64
    %234 = llvm.mlir.constant(1 : index) : i64
    %235 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb25(%233 : i64)
  ^bb25(%236: i64):  // 2 preds: ^bb24, ^bb35
    %237 = llvm.icmp "slt" %236, %234 : i64
    llvm.cond_br %237, ^bb26, ^bb36
  ^bb26:  // pred: ^bb25
    %238 = llvm.mlir.constant(0 : index) : i64
    %239 = llvm.mlir.constant(1 : index) : i64
    %240 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb27(%238 : i64)
  ^bb27(%241: i64):  // 2 preds: ^bb26, ^bb34
    %242 = llvm.icmp "slt" %241, %239 : i64
    llvm.cond_br %242, ^bb28, ^bb35
  ^bb28:  // pred: ^bb27
    %243 = llvm.mlir.constant(0 : index) : i64
    %244 = llvm.mlir.constant(1 : index) : i64
    %245 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb29(%243 : i64)
  ^bb29(%246: i64):  // 2 preds: ^bb28, ^bb33
    %247 = llvm.icmp "slt" %246, %244 : i64
    llvm.cond_br %247, ^bb30, ^bb34
  ^bb30:  // pred: ^bb29
    %248 = llvm.mlir.constant(0 : index) : i64
    %249 = llvm.mlir.constant(1 : index) : i64
    %250 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb31(%248 : i64)
  ^bb31(%251: i64):  // 2 preds: ^bb30, ^bb32
    %252 = llvm.icmp "slt" %251, %249 : i64
    llvm.cond_br %252, ^bb32, ^bb33
  ^bb32:  // pred: ^bb31
    %253 = llvm.extractvalue %165[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %254 = llvm.add %236, %241  : i64
    %255 = llvm.add %254, %246  : i64
    %256 = llvm.add %255, %251  : i64
    %257 = llvm.getelementptr %253[%256] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %258 = llvm.load %257 : !llvm.ptr<i32>
    %259 = llvm.sub %14, %258  : i32
    %260 = llvm.extractvalue %232[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %261 = llvm.add %236, %241  : i64
    %262 = llvm.add %261, %246  : i64
    %263 = llvm.add %262, %251  : i64
    %264 = llvm.getelementptr %260[%263] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %259, %264 : !llvm.ptr<i32>
    %265 = llvm.add %251, %250  : i64
    llvm.br ^bb31(%265 : i64)
  ^bb33:  // pred: ^bb31
    %266 = llvm.add %246, %245  : i64
    llvm.br ^bb29(%266 : i64)
  ^bb34:  // pred: ^bb29
    %267 = llvm.add %241, %240  : i64
    llvm.br ^bb27(%267 : i64)
  ^bb35:  // pred: ^bb27
    %268 = llvm.add %236, %235  : i64
    llvm.br ^bb25(%268 : i64)
  ^bb36:  // pred: ^bb25
    %269 = llvm.mlir.constant(4 : index) : i64
    %270 = llvm.mlir.constant(1 : index) : i64
    %271 = llvm.mlir.null : !llvm.ptr<i64>
    %272 = llvm.getelementptr %271[%269] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %273 = llvm.ptrtoint %272 : !llvm.ptr<i64> to i64
    %274 = llvm.mlir.constant(16 : index) : i64
    %275 = llvm.add %273, %274  : i64
    %276 = llvm.call @malloc(%275) : (i64) -> !llvm.ptr<i8>
    %277 = llvm.bitcast %276 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %278 = llvm.ptrtoint %277 : !llvm.ptr<i64> to i64
    %279 = llvm.mlir.constant(1 : index) : i64
    %280 = llvm.sub %274, %279  : i64
    %281 = llvm.add %278, %280  : i64
    %282 = llvm.urem %281, %274  : i64
    %283 = llvm.sub %281, %282  : i64
    %284 = llvm.inttoptr %283 : i64 to !llvm.ptr<i64>
    %285 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %286 = llvm.insertvalue %277, %285[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %287 = llvm.insertvalue %284, %286[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %288 = llvm.mlir.constant(0 : index) : i64
    %289 = llvm.insertvalue %288, %287[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %290 = llvm.insertvalue %269, %289[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %291 = llvm.insertvalue %270, %290[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %292 = llvm.mlir.constant(0 : index) : i64
    %293 = llvm.mlir.constant(4 : index) : i64
    %294 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb37(%292 : i64)
  ^bb37(%295: i64):  // 2 preds: ^bb36, ^bb38
    %296 = llvm.icmp "slt" %295, %293 : i64
    llvm.cond_br %296, ^bb38, ^bb39
  ^bb38:  // pred: ^bb37
    %297 = llvm.extractvalue %291[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %298 = llvm.getelementptr %297[%295] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %13, %298 : !llvm.ptr<i64>
    %299 = llvm.add %295, %294  : i64
    llvm.br ^bb37(%299 : i64)
  ^bb39:  // pred: ^bb37
    %300 = llvm.mlir.constant(4 : index) : i64
    %301 = llvm.mlir.constant(1 : index) : i64
    %302 = llvm.mlir.null : !llvm.ptr<i64>
    %303 = llvm.getelementptr %302[%300] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %304 = llvm.ptrtoint %303 : !llvm.ptr<i64> to i64
    %305 = llvm.mlir.constant(16 : index) : i64
    %306 = llvm.add %304, %305  : i64
    %307 = llvm.call @malloc(%306) : (i64) -> !llvm.ptr<i8>
    %308 = llvm.bitcast %307 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %309 = llvm.ptrtoint %308 : !llvm.ptr<i64> to i64
    %310 = llvm.mlir.constant(1 : index) : i64
    %311 = llvm.sub %305, %310  : i64
    %312 = llvm.add %309, %311  : i64
    %313 = llvm.urem %312, %305  : i64
    %314 = llvm.sub %312, %313  : i64
    %315 = llvm.inttoptr %314 : i64 to !llvm.ptr<i64>
    %316 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %317 = llvm.insertvalue %308, %316[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %318 = llvm.insertvalue %315, %317[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %319 = llvm.mlir.constant(0 : index) : i64
    %320 = llvm.insertvalue %319, %318[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %321 = llvm.insertvalue %300, %320[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %322 = llvm.insertvalue %301, %321[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %323 = llvm.mlir.constant(0 : index) : i64
    %324 = llvm.mlir.constant(4 : index) : i64
    %325 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb40(%323 : i64)
  ^bb40(%326: i64):  // 2 preds: ^bb39, ^bb41
    %327 = llvm.icmp "slt" %326, %324 : i64
    llvm.cond_br %327, ^bb41, ^bb42
  ^bb41:  // pred: ^bb40
    %328 = llvm.extractvalue %291[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %329 = llvm.getelementptr %328[%326] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %330 = llvm.load %329 : !llvm.ptr<i64>
    %331 = llvm.extractvalue %47[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %332 = llvm.load %331 : !llvm.ptr<i64>
    %333 = llvm.mul %330, %332  : i64
    %334 = llvm.extractvalue %322[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %335 = llvm.getelementptr %334[%326] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %333, %335 : !llvm.ptr<i64>
    %336 = llvm.add %326, %325  : i64
    llvm.br ^bb40(%336 : i64)
  ^bb42:  // pred: ^bb40
    %337 = llvm.mlir.constant(4 : index) : i64
    %338 = llvm.mlir.constant(1 : index) : i64
    %339 = llvm.mlir.null : !llvm.ptr<i1>
    %340 = llvm.getelementptr %339[%337] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %341 = llvm.ptrtoint %340 : !llvm.ptr<i1> to i64
    %342 = llvm.mlir.constant(16 : index) : i64
    %343 = llvm.add %341, %342  : i64
    %344 = llvm.call @malloc(%343) : (i64) -> !llvm.ptr<i8>
    %345 = llvm.bitcast %344 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %346 = llvm.ptrtoint %345 : !llvm.ptr<i1> to i64
    %347 = llvm.mlir.constant(1 : index) : i64
    %348 = llvm.sub %342, %347  : i64
    %349 = llvm.add %346, %348  : i64
    %350 = llvm.urem %349, %342  : i64
    %351 = llvm.sub %349, %350  : i64
    %352 = llvm.inttoptr %351 : i64 to !llvm.ptr<i1>
    %353 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %354 = llvm.insertvalue %345, %353[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %355 = llvm.insertvalue %352, %354[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %356 = llvm.mlir.constant(0 : index) : i64
    %357 = llvm.insertvalue %356, %355[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %358 = llvm.insertvalue %337, %357[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %359 = llvm.insertvalue %338, %358[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %360 = llvm.mlir.constant(0 : index) : i64
    %361 = llvm.mlir.constant(4 : index) : i64
    %362 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb43(%360 : i64)
  ^bb43(%363: i64):  // 2 preds: ^bb42, ^bb44
    %364 = llvm.icmp "slt" %363, %361 : i64
    llvm.cond_br %364, ^bb44, ^bb45
  ^bb44:  // pred: ^bb43
    %365 = llvm.extractvalue %40[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %366 = llvm.getelementptr %365[%363] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %367 = llvm.load %366 : !llvm.ptr<i64>
    %368 = llvm.extractvalue %322[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %369 = llvm.getelementptr %368[%363] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %370 = llvm.load %369 : !llvm.ptr<i64>
    %371 = llvm.icmp "eq" %367, %370 : i64
    %372 = llvm.extractvalue %359[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %373 = llvm.getelementptr %372[%363] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %371, %373 : !llvm.ptr<i1>
    %374 = llvm.add %363, %362  : i64
    llvm.br ^bb43(%374 : i64)
  ^bb45:  // pred: ^bb43
    %375 = llvm.mlir.constant(4 : index) : i64
    %376 = llvm.mlir.constant(1 : index) : i64
    %377 = llvm.mlir.null : !llvm.ptr<i64>
    %378 = llvm.getelementptr %377[%375] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %379 = llvm.ptrtoint %378 : !llvm.ptr<i64> to i64
    %380 = llvm.mlir.constant(16 : index) : i64
    %381 = llvm.add %379, %380  : i64
    %382 = llvm.call @malloc(%381) : (i64) -> !llvm.ptr<i8>
    %383 = llvm.bitcast %382 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %384 = llvm.ptrtoint %383 : !llvm.ptr<i64> to i64
    %385 = llvm.mlir.constant(1 : index) : i64
    %386 = llvm.sub %380, %385  : i64
    %387 = llvm.add %384, %386  : i64
    %388 = llvm.urem %387, %380  : i64
    %389 = llvm.sub %387, %388  : i64
    %390 = llvm.inttoptr %389 : i64 to !llvm.ptr<i64>
    %391 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %392 = llvm.insertvalue %383, %391[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %393 = llvm.insertvalue %390, %392[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %394 = llvm.mlir.constant(0 : index) : i64
    %395 = llvm.insertvalue %394, %393[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %396 = llvm.insertvalue %375, %395[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %397 = llvm.insertvalue %376, %396[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %398 = llvm.mlir.constant(0 : index) : i64
    %399 = llvm.mlir.constant(4 : index) : i64
    %400 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb46(%398 : i64)
  ^bb46(%401: i64):  // 2 preds: ^bb45, ^bb47
    %402 = llvm.icmp "slt" %401, %399 : i64
    llvm.cond_br %402, ^bb47, ^bb48
  ^bb47:  // pred: ^bb46
    %403 = llvm.extractvalue %359[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %404 = llvm.getelementptr %403[%401] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %405 = llvm.load %404 : !llvm.ptr<i1>
    %406 = llvm.extractvalue %291[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %407 = llvm.getelementptr %406[%401] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %408 = llvm.load %407 : !llvm.ptr<i64>
    %409 = llvm.extractvalue %58[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %410 = llvm.getelementptr %409[%401] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %411 = llvm.load %410 : !llvm.ptr<i64>
    %412 = llvm.select %405, %408, %411 : i1, i64
    %413 = llvm.extractvalue %397[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %414 = llvm.getelementptr %413[%401] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %412, %414 : !llvm.ptr<i64>
    %415 = llvm.add %401, %400  : i64
    llvm.br ^bb46(%415 : i64)
  ^bb48:  // pred: ^bb46
    %416 = llvm.mlir.constant(1 : index) : i64
    %417 = llvm.mlir.constant(1 : index) : i64
    %418 = llvm.mlir.constant(1 : index) : i64
    %419 = llvm.mlir.constant(1 : index) : i64
    %420 = llvm.mlir.constant(1 : index) : i64
    %421 = llvm.mlir.null : !llvm.ptr<i32>
    %422 = llvm.getelementptr %421[%416] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %423 = llvm.ptrtoint %422 : !llvm.ptr<i32> to i64
    %424 = llvm.mlir.constant(16 : index) : i64
    %425 = llvm.add %423, %424  : i64
    %426 = llvm.call @malloc(%425) : (i64) -> !llvm.ptr<i8>
    %427 = llvm.bitcast %426 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %428 = llvm.ptrtoint %427 : !llvm.ptr<i32> to i64
    %429 = llvm.mlir.constant(1 : index) : i64
    %430 = llvm.sub %424, %429  : i64
    %431 = llvm.add %428, %430  : i64
    %432 = llvm.urem %431, %424  : i64
    %433 = llvm.sub %431, %432  : i64
    %434 = llvm.inttoptr %433 : i64 to !llvm.ptr<i32>
    %435 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %436 = llvm.insertvalue %427, %435[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %437 = llvm.insertvalue %434, %436[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %438 = llvm.mlir.constant(0 : index) : i64
    %439 = llvm.insertvalue %438, %437[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %440 = llvm.insertvalue %416, %439[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %441 = llvm.insertvalue %417, %440[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %442 = llvm.insertvalue %418, %441[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %443 = llvm.insertvalue %419, %442[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %444 = llvm.insertvalue %417, %443[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %445 = llvm.insertvalue %418, %444[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %446 = llvm.insertvalue %419, %445[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %447 = llvm.insertvalue %420, %446[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %448 = llvm.mlir.constant(0 : index) : i64
    %449 = llvm.mlir.constant(1 : index) : i64
    %450 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb49(%448 : i64)
  ^bb49(%451: i64):  // 2 preds: ^bb48, ^bb59
    %452 = llvm.icmp "slt" %451, %449 : i64
    llvm.cond_br %452, ^bb50, ^bb60
  ^bb50:  // pred: ^bb49
    %453 = llvm.mlir.constant(0 : index) : i64
    %454 = llvm.mlir.constant(1 : index) : i64
    %455 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb51(%453 : i64)
  ^bb51(%456: i64):  // 2 preds: ^bb50, ^bb58
    %457 = llvm.icmp "slt" %456, %454 : i64
    llvm.cond_br %457, ^bb52, ^bb59
  ^bb52:  // pred: ^bb51
    %458 = llvm.mlir.constant(0 : index) : i64
    %459 = llvm.mlir.constant(1 : index) : i64
    %460 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb53(%458 : i64)
  ^bb53(%461: i64):  // 2 preds: ^bb52, ^bb57
    %462 = llvm.icmp "slt" %461, %459 : i64
    llvm.cond_br %462, ^bb54, ^bb58
  ^bb54:  // pred: ^bb53
    %463 = llvm.mlir.constant(0 : index) : i64
    %464 = llvm.mlir.constant(1 : index) : i64
    %465 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb55(%463 : i64)
  ^bb55(%466: i64):  // 2 preds: ^bb54, ^bb56
    %467 = llvm.icmp "slt" %466, %464 : i64
    llvm.cond_br %467, ^bb56, ^bb57
  ^bb56:  // pred: ^bb55
    %468 = llvm.extractvalue %232[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %469 = llvm.add %15, %15  : i64
    %470 = llvm.add %469, %15  : i64
    %471 = llvm.add %470, %15  : i64
    %472 = llvm.getelementptr %468[%471] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %473 = llvm.load %472 : !llvm.ptr<i32>
    %474 = llvm.extractvalue %447[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %475 = llvm.add %451, %456  : i64
    %476 = llvm.add %475, %461  : i64
    %477 = llvm.add %476, %466  : i64
    %478 = llvm.getelementptr %474[%477] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %473, %478 : !llvm.ptr<i32>
    %479 = llvm.add %466, %465  : i64
    llvm.br ^bb55(%479 : i64)
  ^bb57:  // pred: ^bb55
    %480 = llvm.add %461, %460  : i64
    llvm.br ^bb53(%480 : i64)
  ^bb58:  // pred: ^bb53
    %481 = llvm.add %456, %455  : i64
    llvm.br ^bb51(%481 : i64)
  ^bb59:  // pred: ^bb51
    %482 = llvm.add %451, %450  : i64
    llvm.br ^bb49(%482 : i64)
  ^bb60:  // pred: ^bb49
    %483 = llvm.mlir.constant(1 : index) : i64
    %484 = llvm.mlir.constant(1 : index) : i64
    %485 = llvm.mlir.constant(1 : index) : i64
    %486 = llvm.mlir.constant(1 : index) : i64
    %487 = llvm.mlir.null : !llvm.ptr<i32>
    %488 = llvm.getelementptr %487[%483] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %489 = llvm.ptrtoint %488 : !llvm.ptr<i32> to i64
    %490 = llvm.mlir.constant(16 : index) : i64
    %491 = llvm.add %489, %490  : i64
    %492 = llvm.call @malloc(%491) : (i64) -> !llvm.ptr<i8>
    %493 = llvm.bitcast %492 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %494 = llvm.ptrtoint %493 : !llvm.ptr<i32> to i64
    %495 = llvm.mlir.constant(1 : index) : i64
    %496 = llvm.sub %490, %495  : i64
    %497 = llvm.add %494, %496  : i64
    %498 = llvm.urem %497, %490  : i64
    %499 = llvm.sub %497, %498  : i64
    %500 = llvm.inttoptr %499 : i64 to !llvm.ptr<i32>
    %501 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>
    %502 = llvm.insertvalue %493, %501[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %503 = llvm.insertvalue %500, %502[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %504 = llvm.mlir.constant(0 : index) : i64
    %505 = llvm.insertvalue %504, %503[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %506 = llvm.insertvalue %483, %505[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %507 = llvm.insertvalue %484, %506[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %508 = llvm.insertvalue %485, %507[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %509 = llvm.insertvalue %484, %508[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %510 = llvm.insertvalue %485, %509[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %511 = llvm.insertvalue %486, %510[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %512 = llvm.mlir.constant(0 : index) : i64
    %513 = llvm.mlir.constant(1 : index) : i64
    %514 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb61(%512 : i64)
  ^bb61(%515: i64):  // 2 preds: ^bb60, ^bb68
    %516 = llvm.icmp "slt" %515, %513 : i64
    llvm.cond_br %516, ^bb62, ^bb69
  ^bb62:  // pred: ^bb61
    %517 = llvm.mlir.constant(0 : index) : i64
    %518 = llvm.mlir.constant(1 : index) : i64
    %519 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb63(%517 : i64)
  ^bb63(%520: i64):  // 2 preds: ^bb62, ^bb67
    %521 = llvm.icmp "slt" %520, %518 : i64
    llvm.cond_br %521, ^bb64, ^bb68
  ^bb64:  // pred: ^bb63
    %522 = llvm.mlir.constant(0 : index) : i64
    %523 = llvm.mlir.constant(1 : index) : i64
    %524 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb65(%522 : i64)
  ^bb65(%525: i64):  // 2 preds: ^bb64, ^bb66
    %526 = llvm.icmp "slt" %525, %523 : i64
    llvm.cond_br %526, ^bb66, ^bb67
  ^bb66:  // pred: ^bb65
    %527 = llvm.extractvalue %511[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %528 = llvm.add %515, %520  : i64
    %529 = llvm.add %528, %525  : i64
    %530 = llvm.getelementptr %527[%529] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %12, %530 : !llvm.ptr<i32>
    %531 = llvm.add %525, %524  : i64
    llvm.br ^bb65(%531 : i64)
  ^bb67:  // pred: ^bb65
    %532 = llvm.add %520, %519  : i64
    llvm.br ^bb63(%532 : i64)
  ^bb68:  // pred: ^bb63
    %533 = llvm.add %515, %514  : i64
    llvm.br ^bb61(%533 : i64)
  ^bb69:  // pred: ^bb61
    %534 = llvm.mlir.constant(0 : index) : i64
    %535 = llvm.mlir.constant(1 : index) : i64
    %536 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb70(%534 : i64)
  ^bb70(%537: i64):  // 2 preds: ^bb69, ^bb80
    %538 = llvm.icmp "slt" %537, %535 : i64
    llvm.cond_br %538, ^bb71, ^bb81
  ^bb71:  // pred: ^bb70
    %539 = llvm.mlir.constant(0 : index) : i64
    %540 = llvm.mlir.constant(1 : index) : i64
    %541 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb72(%539 : i64)
  ^bb72(%542: i64):  // 2 preds: ^bb71, ^bb79
    %543 = llvm.icmp "slt" %542, %540 : i64
    llvm.cond_br %543, ^bb73, ^bb80
  ^bb73:  // pred: ^bb72
    %544 = llvm.mlir.constant(0 : index) : i64
    %545 = llvm.mlir.constant(1 : index) : i64
    %546 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb74(%544 : i64)
  ^bb74(%547: i64):  // 2 preds: ^bb73, ^bb78
    %548 = llvm.icmp "slt" %547, %545 : i64
    llvm.cond_br %548, ^bb75, ^bb79
  ^bb75:  // pred: ^bb74
    %549 = llvm.mlir.constant(0 : index) : i64
    %550 = llvm.mlir.constant(1 : index) : i64
    %551 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb76(%549 : i64)
  ^bb76(%552: i64):  // 2 preds: ^bb75, ^bb77
    %553 = llvm.icmp "slt" %552, %550 : i64
    llvm.cond_br %553, ^bb77, ^bb78
  ^bb77:  // pred: ^bb76
    %554 = llvm.extractvalue %232[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %555 = llvm.add %537, %542  : i64
    %556 = llvm.add %555, %547  : i64
    %557 = llvm.add %556, %552  : i64
    %558 = llvm.getelementptr %554[%557] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %559 = llvm.load %558 : !llvm.ptr<i32>
    %560 = llvm.extractvalue %511[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %561 = llvm.add %537, %542  : i64
    %562 = llvm.add %561, %547  : i64
    %563 = llvm.getelementptr %560[%562] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %564 = llvm.load %563 : !llvm.ptr<i32>
    %565 = llvm.icmp "slt" %564, %559 : i32
    %566 = llvm.select %565, %564, %559 : i1, i32
    %567 = llvm.extractvalue %511[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %568 = llvm.add %537, %542  : i64
    %569 = llvm.add %568, %547  : i64
    %570 = llvm.getelementptr %567[%569] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %566, %570 : !llvm.ptr<i32>
    %571 = llvm.add %552, %551  : i64
    llvm.br ^bb76(%571 : i64)
  ^bb78:  // pred: ^bb76
    %572 = llvm.add %547, %546  : i64
    llvm.br ^bb74(%572 : i64)
  ^bb79:  // pred: ^bb74
    %573 = llvm.add %542, %541  : i64
    llvm.br ^bb72(%573 : i64)
  ^bb80:  // pred: ^bb72
    %574 = llvm.add %537, %536  : i64
    llvm.br ^bb70(%574 : i64)
  ^bb81:  // pred: ^bb70
    %575 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)>
    %576 = llvm.insertvalue %447, %575[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)> 
    %577 = llvm.insertvalue %511, %576[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)> 
    llvm.return %577 : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) attributes {input_names = ["v2_0"], llvm.emit_c_interface, output_names = ["v0_0", "v1_0"]} {
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
    %12 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)>
    llvm.store %12, %arg0 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)>>
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
    llvm.call @_mlir_ciface_main_graph(%2, %6) : (!llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) -> ()
    %44 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)>>
    %45 = llvm.extractvalue %44[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)> 
    %46 = llvm.extractvalue %44[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)> 
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
    %83 = llvm.mlir.constant(3 : i64) : i64
    %84 = llvm.call @omTensorCreateUntyped(%83) : (i64) -> !llvm.ptr<i8>
    %85 = llvm.mlir.constant(1 : i64) : i64
    %86 = llvm.extractvalue %46[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %87 = llvm.bitcast %86 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %88 = llvm.extractvalue %46[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %89 = llvm.bitcast %88 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%84, %85, %87, %89) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %90 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%84, %90) : (!llvm.ptr<i8>, i64) -> ()
    %91 = llvm.call @omTensorGetShape(%84) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %92 = llvm.call @omTensorGetStrides(%84) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %93 = llvm.mlir.constant(0 : i64) : i64
    %94 = llvm.extractvalue %46[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %95 = llvm.getelementptr %91[%93] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %94, %95 : !llvm.ptr<i64>
    %96 = llvm.extractvalue %46[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %97 = llvm.getelementptr %92[%93] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %96, %97 : !llvm.ptr<i64>
    %98 = llvm.mlir.constant(1 : i64) : i64
    %99 = llvm.extractvalue %46[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %100 = llvm.getelementptr %91[%98] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %99, %100 : !llvm.ptr<i64>
    %101 = llvm.extractvalue %46[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %102 = llvm.getelementptr %92[%98] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %101, %102 : !llvm.ptr<i64>
    %103 = llvm.mlir.constant(2 : i64) : i64
    %104 = llvm.extractvalue %46[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %105 = llvm.getelementptr %91[%103] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %104, %105 : !llvm.ptr<i64>
    %106 = llvm.extractvalue %46[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %107 = llvm.getelementptr %92[%103] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %106, %107 : !llvm.ptr<i64>
    %108 = llvm.mlir.constant(1 : i64) : i64
    %109 = llvm.getelementptr %50[%108] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %84, %109 : !llvm.ptr<ptr<i8>>
    %110 = llvm.call @omTensorListCreate(%50, %47, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %110 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<137 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<137 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

