module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [2 , 2] , \22name\22 : \22v5_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 2] , \22name\22 : \22v4_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i64\22 , \22dims\22 : [1 , 1 , 2] , \22name\22 : \22v0_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 2 , 2] , \22name\22 : \22v1_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.mlir.global internal constant @constant_1(dense<1> : tensor<i32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i32>
  llvm.mlir.global internal constant @constant_0(dense<-1> : tensor<i32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i32>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: !llvm.ptr<i32>, %arg8: !llvm.ptr<i32>, %arg9: i64, %arg10: i64, %arg11: i64, %arg12: i64, %arg13: i64, %arg14: i64, %arg15: i64, %arg16: i64, %arg17: i64) -> !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> attributes {input_names = ["v5_0", "v4_0"], llvm.emit_c_interface, output_names = ["v0_0", "v1_0"]} {
    %0 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>
    %1 = llvm.insertvalue %arg0, %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %2 = llvm.insertvalue %arg1, %1[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %3 = llvm.insertvalue %arg2, %2[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %4 = llvm.insertvalue %arg3, %3[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %5 = llvm.insertvalue %arg5, %4[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %6 = llvm.insertvalue %arg4, %5[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %7 = llvm.insertvalue %arg6, %6[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %8 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %9 = llvm.insertvalue %arg7, %8[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %10 = llvm.insertvalue %arg8, %9[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %11 = llvm.insertvalue %arg9, %10[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %12 = llvm.insertvalue %arg10, %11[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %13 = llvm.insertvalue %arg14, %12[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %14 = llvm.insertvalue %arg11, %13[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %15 = llvm.insertvalue %arg15, %14[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %16 = llvm.insertvalue %arg12, %15[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %17 = llvm.insertvalue %arg16, %16[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %18 = llvm.insertvalue %arg13, %17[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %19 = llvm.insertvalue %arg17, %18[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %20 = llvm.mlir.constant(0 : i64) : i64
    %21 = llvm.mlir.constant(-1 : i64) : i64
    %22 = llvm.mlir.constant(0 : index) : i64
    %23 = llvm.mlir.addressof @constant_0 : !llvm.ptr<array<1 x i32>>
    %24 = llvm.bitcast %23 : !llvm.ptr<array<1 x i32>> to !llvm.ptr<i32>
    %25 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64)>
    %26 = llvm.insertvalue %24, %25[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %27 = llvm.insertvalue %24, %26[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %28 = llvm.mlir.constant(0 : index) : i64
    %29 = llvm.insertvalue %28, %27[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %30 = llvm.mlir.addressof @constant_1 : !llvm.ptr<array<1 x i32>>
    %31 = llvm.bitcast %30 : !llvm.ptr<array<1 x i32>> to !llvm.ptr<i32>
    %32 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64)>
    %33 = llvm.insertvalue %31, %32[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %34 = llvm.insertvalue %31, %33[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %35 = llvm.mlir.constant(0 : index) : i64
    %36 = llvm.insertvalue %35, %34[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %37 = llvm.mlir.constant(1 : index) : i64
    %38 = llvm.mlir.constant(1 : index) : i64
    %39 = llvm.mlir.constant(2 : index) : i64
    %40 = llvm.mlir.constant(2 : index) : i64
    %41 = llvm.mlir.constant(1 : index) : i64
    %42 = llvm.mlir.constant(4 : index) : i64
    %43 = llvm.mlir.constant(4 : index) : i64
    %44 = llvm.mlir.constant(4 : index) : i64
    %45 = llvm.mlir.null : !llvm.ptr<i32>
    %46 = llvm.getelementptr %45[%44] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %47 = llvm.ptrtoint %46 : !llvm.ptr<i32> to i64
    %48 = llvm.mlir.constant(16 : index) : i64
    %49 = llvm.add %47, %48  : i64
    %50 = llvm.call @malloc(%49) : (i64) -> !llvm.ptr<i8>
    %51 = llvm.bitcast %50 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %52 = llvm.ptrtoint %51 : !llvm.ptr<i32> to i64
    %53 = llvm.mlir.constant(1 : index) : i64
    %54 = llvm.sub %48, %53  : i64
    %55 = llvm.add %52, %54  : i64
    %56 = llvm.urem %55, %48  : i64
    %57 = llvm.sub %55, %56  : i64
    %58 = llvm.inttoptr %57 : i64 to !llvm.ptr<i32>
    %59 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %60 = llvm.insertvalue %51, %59[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %61 = llvm.insertvalue %58, %60[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %62 = llvm.mlir.constant(0 : index) : i64
    %63 = llvm.insertvalue %62, %61[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %64 = llvm.insertvalue %37, %63[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %65 = llvm.insertvalue %38, %64[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %66 = llvm.insertvalue %39, %65[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %67 = llvm.insertvalue %40, %66[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %68 = llvm.insertvalue %43, %67[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %69 = llvm.insertvalue %42, %68[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %70 = llvm.insertvalue %40, %69[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %71 = llvm.insertvalue %41, %70[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %72 = llvm.mlir.constant(0 : index) : i64
    %73 = llvm.mlir.constant(1 : index) : i64
    %74 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%72 : i64)
  ^bb1(%75: i64):  // 2 preds: ^bb0, ^bb11
    %76 = llvm.icmp "slt" %75, %73 : i64
    llvm.cond_br %76, ^bb2, ^bb12
  ^bb2:  // pred: ^bb1
    %77 = llvm.mlir.constant(0 : index) : i64
    %78 = llvm.mlir.constant(1 : index) : i64
    %79 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%77 : i64)
  ^bb3(%80: i64):  // 2 preds: ^bb2, ^bb10
    %81 = llvm.icmp "slt" %80, %78 : i64
    llvm.cond_br %81, ^bb4, ^bb11
  ^bb4:  // pred: ^bb3
    %82 = llvm.mlir.constant(0 : index) : i64
    %83 = llvm.mlir.constant(2 : index) : i64
    %84 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%82 : i64)
  ^bb5(%85: i64):  // 2 preds: ^bb4, ^bb9
    %86 = llvm.icmp "slt" %85, %83 : i64
    llvm.cond_br %86, ^bb6, ^bb10
  ^bb6:  // pred: ^bb5
    %87 = llvm.mlir.constant(0 : index) : i64
    %88 = llvm.mlir.constant(2 : index) : i64
    %89 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%87 : i64)
  ^bb7(%90: i64):  // 2 preds: ^bb6, ^bb8
    %91 = llvm.icmp "slt" %90, %88 : i64
    llvm.cond_br %91, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %92 = llvm.extractvalue %19[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %93 = llvm.mlir.constant(2 : index) : i64
    %94 = llvm.mul %75, %93  : i64
    %95 = llvm.mlir.constant(2 : index) : i64
    %96 = llvm.mul %80, %95  : i64
    %97 = llvm.add %94, %96  : i64
    %98 = llvm.mlir.constant(2 : index) : i64
    %99 = llvm.mul %22, %98  : i64
    %100 = llvm.add %97, %99  : i64
    %101 = llvm.add %100, %90  : i64
    %102 = llvm.getelementptr %92[%101] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %103 = llvm.load %102 : !llvm.ptr<i32>
    %104 = llvm.extractvalue %7[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %105 = llvm.mlir.constant(2 : index) : i64
    %106 = llvm.mul %85, %105  : i64
    %107 = llvm.add %106, %90  : i64
    %108 = llvm.getelementptr %104[%107] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %109 = llvm.load %108 : !llvm.ptr<i32>
    %110 = llvm.icmp "slt" %103, %109 : i32
    %111 = llvm.select %110, %103, %109 : i1, i32
    %112 = llvm.extractvalue %71[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %113 = llvm.mlir.constant(4 : index) : i64
    %114 = llvm.mul %75, %113  : i64
    %115 = llvm.mlir.constant(4 : index) : i64
    %116 = llvm.mul %80, %115  : i64
    %117 = llvm.add %114, %116  : i64
    %118 = llvm.mlir.constant(2 : index) : i64
    %119 = llvm.mul %85, %118  : i64
    %120 = llvm.add %117, %119  : i64
    %121 = llvm.add %120, %90  : i64
    %122 = llvm.getelementptr %112[%121] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %111, %122 : !llvm.ptr<i32>
    %123 = llvm.add %90, %89  : i64
    llvm.br ^bb7(%123 : i64)
  ^bb9:  // pred: ^bb7
    %124 = llvm.add %85, %84  : i64
    llvm.br ^bb5(%124 : i64)
  ^bb10:  // pred: ^bb5
    %125 = llvm.add %80, %79  : i64
    llvm.br ^bb3(%125 : i64)
  ^bb11:  // pred: ^bb3
    %126 = llvm.add %75, %74  : i64
    llvm.br ^bb1(%126 : i64)
  ^bb12:  // pred: ^bb1
    %127 = llvm.mlir.constant(1 : index) : i64
    %128 = llvm.mlir.constant(1 : index) : i64
    %129 = llvm.mlir.constant(2 : index) : i64
    %130 = llvm.mlir.constant(1 : index) : i64
    %131 = llvm.mlir.constant(2 : index) : i64
    %132 = llvm.mlir.constant(2 : index) : i64
    %133 = llvm.mlir.null : !llvm.ptr<i64>
    %134 = llvm.getelementptr %133[%132] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %135 = llvm.ptrtoint %134 : !llvm.ptr<i64> to i64
    %136 = llvm.mlir.constant(16 : index) : i64
    %137 = llvm.add %135, %136  : i64
    %138 = llvm.call @malloc(%137) : (i64) -> !llvm.ptr<i8>
    %139 = llvm.bitcast %138 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %140 = llvm.ptrtoint %139 : !llvm.ptr<i64> to i64
    %141 = llvm.mlir.constant(1 : index) : i64
    %142 = llvm.sub %136, %141  : i64
    %143 = llvm.add %140, %142  : i64
    %144 = llvm.urem %143, %136  : i64
    %145 = llvm.sub %143, %144  : i64
    %146 = llvm.inttoptr %145 : i64 to !llvm.ptr<i64>
    %147 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>
    %148 = llvm.insertvalue %139, %147[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %149 = llvm.insertvalue %146, %148[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %150 = llvm.mlir.constant(0 : index) : i64
    %151 = llvm.insertvalue %150, %149[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %152 = llvm.insertvalue %127, %151[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %153 = llvm.insertvalue %128, %152[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %154 = llvm.insertvalue %129, %153[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %155 = llvm.insertvalue %131, %154[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %156 = llvm.insertvalue %129, %155[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %157 = llvm.insertvalue %130, %156[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %158 = llvm.mlir.constant(0 : index) : i64
    %159 = llvm.mlir.constant(1 : index) : i64
    %160 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%158 : i64)
  ^bb13(%161: i64):  // 2 preds: ^bb12, ^bb20
    %162 = llvm.icmp "slt" %161, %159 : i64
    llvm.cond_br %162, ^bb14, ^bb21
  ^bb14:  // pred: ^bb13
    %163 = llvm.mlir.constant(0 : index) : i64
    %164 = llvm.mlir.constant(1 : index) : i64
    %165 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb15(%163 : i64)
  ^bb15(%166: i64):  // 2 preds: ^bb14, ^bb19
    %167 = llvm.icmp "slt" %166, %164 : i64
    llvm.cond_br %167, ^bb16, ^bb20
  ^bb16:  // pred: ^bb15
    %168 = llvm.mlir.constant(0 : index) : i64
    %169 = llvm.mlir.constant(2 : index) : i64
    %170 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb17(%168 : i64)
  ^bb17(%171: i64):  // 2 preds: ^bb16, ^bb18
    %172 = llvm.icmp "slt" %171, %169 : i64
    llvm.cond_br %172, ^bb18, ^bb19
  ^bb18:  // pred: ^bb17
    %173 = llvm.extractvalue %157[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %174 = llvm.mlir.constant(2 : index) : i64
    %175 = llvm.mul %161, %174  : i64
    %176 = llvm.mlir.constant(2 : index) : i64
    %177 = llvm.mul %166, %176  : i64
    %178 = llvm.add %175, %177  : i64
    %179 = llvm.add %178, %171  : i64
    %180 = llvm.getelementptr %173[%179] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %21, %180 : !llvm.ptr<i64>
    %181 = llvm.add %171, %170  : i64
    llvm.br ^bb17(%181 : i64)
  ^bb19:  // pred: ^bb17
    %182 = llvm.add %166, %165  : i64
    llvm.br ^bb15(%182 : i64)
  ^bb20:  // pred: ^bb15
    %183 = llvm.add %161, %160  : i64
    llvm.br ^bb13(%183 : i64)
  ^bb21:  // pred: ^bb13
    %184 = llvm.mlir.constant(0 : index) : i64
    %185 = llvm.mlir.constant(1 : index) : i64
    %186 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb22(%184 : i64)
  ^bb22(%187: i64):  // 2 preds: ^bb21, ^bb32
    %188 = llvm.icmp "slt" %187, %185 : i64
    llvm.cond_br %188, ^bb23, ^bb33
  ^bb23:  // pred: ^bb22
    %189 = llvm.mlir.constant(0 : index) : i64
    %190 = llvm.mlir.constant(1 : index) : i64
    %191 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb24(%189 : i64)
  ^bb24(%192: i64):  // 2 preds: ^bb23, ^bb31
    %193 = llvm.icmp "slt" %192, %190 : i64
    llvm.cond_br %193, ^bb25, ^bb32
  ^bb25:  // pred: ^bb24
    %194 = llvm.mlir.constant(0 : index) : i64
    %195 = llvm.mlir.constant(2 : index) : i64
    %196 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb26(%194 : i64)
  ^bb26(%197: i64):  // 2 preds: ^bb25, ^bb30
    %198 = llvm.icmp "slt" %197, %195 : i64
    llvm.cond_br %198, ^bb27, ^bb31
  ^bb27:  // pred: ^bb26
    %199 = llvm.mlir.constant(0 : index) : i64
    %200 = llvm.mlir.constant(2 : index) : i64
    %201 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb28(%199 : i64)
  ^bb28(%202: i64):  // 2 preds: ^bb27, ^bb29
    %203 = llvm.icmp "slt" %202, %200 : i64
    llvm.cond_br %203, ^bb29, ^bb30
  ^bb29:  // pred: ^bb28
    %204 = llvm.extractvalue %71[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %205 = llvm.mlir.constant(4 : index) : i64
    %206 = llvm.mul %187, %205  : i64
    %207 = llvm.mlir.constant(4 : index) : i64
    %208 = llvm.mul %192, %207  : i64
    %209 = llvm.add %206, %208  : i64
    %210 = llvm.mlir.constant(2 : index) : i64
    %211 = llvm.mul %197, %210  : i64
    %212 = llvm.add %209, %211  : i64
    %213 = llvm.add %212, %202  : i64
    %214 = llvm.getelementptr %204[%213] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %215 = llvm.load %214 : !llvm.ptr<i32>
    %216 = llvm.extractvalue %157[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %217 = llvm.mlir.constant(2 : index) : i64
    %218 = llvm.mul %187, %217  : i64
    %219 = llvm.mlir.constant(2 : index) : i64
    %220 = llvm.mul %192, %219  : i64
    %221 = llvm.add %218, %220  : i64
    %222 = llvm.add %221, %202  : i64
    %223 = llvm.getelementptr %216[%222] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %224 = llvm.load %223 : !llvm.ptr<i64>
    %225 = llvm.icmp "slt" %224, %20 : i64
    %226 = llvm.select %225, %20, %224 : i1, i64
    %227 = llvm.extractvalue %71[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %228 = llvm.mlir.constant(4 : index) : i64
    %229 = llvm.mul %187, %228  : i64
    %230 = llvm.mlir.constant(4 : index) : i64
    %231 = llvm.mul %192, %230  : i64
    %232 = llvm.add %229, %231  : i64
    %233 = llvm.mlir.constant(2 : index) : i64
    %234 = llvm.mul %226, %233  : i64
    %235 = llvm.add %232, %234  : i64
    %236 = llvm.add %235, %202  : i64
    %237 = llvm.getelementptr %227[%236] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %238 = llvm.load %237 : !llvm.ptr<i32>
    %239 = llvm.icmp "sgt" %215, %238 : i32
    %240 = llvm.select %239, %197, %226 : i1, i64
    %241 = llvm.extractvalue %157[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %242 = llvm.mlir.constant(2 : index) : i64
    %243 = llvm.mul %187, %242  : i64
    %244 = llvm.mlir.constant(2 : index) : i64
    %245 = llvm.mul %192, %244  : i64
    %246 = llvm.add %243, %245  : i64
    %247 = llvm.add %246, %202  : i64
    %248 = llvm.getelementptr %241[%247] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %240, %248 : !llvm.ptr<i64>
    %249 = llvm.add %202, %201  : i64
    llvm.br ^bb28(%249 : i64)
  ^bb30:  // pred: ^bb28
    %250 = llvm.add %197, %196  : i64
    llvm.br ^bb26(%250 : i64)
  ^bb31:  // pred: ^bb26
    %251 = llvm.add %192, %191  : i64
    llvm.br ^bb24(%251 : i64)
  ^bb32:  // pred: ^bb24
    %252 = llvm.add %187, %186  : i64
    llvm.br ^bb22(%252 : i64)
  ^bb33:  // pred: ^bb22
    %253 = llvm.mlir.constant(1 : index) : i64
    %254 = llvm.mlir.constant(2 : index) : i64
    %255 = llvm.mlir.constant(2 : index) : i64
    %256 = llvm.mlir.constant(1 : index) : i64
    %257 = llvm.mlir.constant(1 : index) : i64
    %258 = llvm.mlir.constant(4 : index) : i64
    %259 = llvm.mlir.constant(4 : index) : i64
    %260 = llvm.mlir.null : !llvm.ptr<i32>
    %261 = llvm.getelementptr %260[%259] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %262 = llvm.ptrtoint %261 : !llvm.ptr<i32> to i64
    %263 = llvm.mlir.constant(16 : index) : i64
    %264 = llvm.add %262, %263  : i64
    %265 = llvm.call @malloc(%264) : (i64) -> !llvm.ptr<i8>
    %266 = llvm.bitcast %265 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %267 = llvm.ptrtoint %266 : !llvm.ptr<i32> to i64
    %268 = llvm.mlir.constant(1 : index) : i64
    %269 = llvm.sub %263, %268  : i64
    %270 = llvm.add %267, %269  : i64
    %271 = llvm.urem %270, %263  : i64
    %272 = llvm.sub %270, %271  : i64
    %273 = llvm.inttoptr %272 : i64 to !llvm.ptr<i32>
    %274 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %275 = llvm.insertvalue %266, %274[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %276 = llvm.insertvalue %273, %275[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %277 = llvm.mlir.constant(0 : index) : i64
    %278 = llvm.insertvalue %277, %276[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %279 = llvm.insertvalue %253, %278[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %280 = llvm.insertvalue %254, %279[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %281 = llvm.insertvalue %255, %280[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %282 = llvm.insertvalue %256, %281[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %283 = llvm.insertvalue %258, %282[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %284 = llvm.insertvalue %255, %283[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %285 = llvm.insertvalue %256, %284[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %286 = llvm.insertvalue %257, %285[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %287 = llvm.mlir.constant(0 : index) : i64
    %288 = llvm.mlir.constant(1 : index) : i64
    %289 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb34(%287 : i64)
  ^bb34(%290: i64):  // 2 preds: ^bb33, ^bb44
    %291 = llvm.icmp "slt" %290, %288 : i64
    llvm.cond_br %291, ^bb35, ^bb45
  ^bb35:  // pred: ^bb34
    %292 = llvm.mlir.constant(0 : index) : i64
    %293 = llvm.mlir.constant(1 : index) : i64
    %294 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb36(%292 : i64)
  ^bb36(%295: i64):  // 2 preds: ^bb35, ^bb43
    %296 = llvm.icmp "slt" %295, %293 : i64
    llvm.cond_br %296, ^bb37, ^bb44
  ^bb37:  // pred: ^bb36
    %297 = llvm.mlir.constant(0 : index) : i64
    %298 = llvm.mlir.constant(2 : index) : i64
    %299 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb38(%297 : i64)
  ^bb38(%300: i64):  // 2 preds: ^bb37, ^bb42
    %301 = llvm.icmp "slt" %300, %298 : i64
    llvm.cond_br %301, ^bb39, ^bb43
  ^bb39:  // pred: ^bb38
    %302 = llvm.mlir.constant(0 : index) : i64
    %303 = llvm.mlir.constant(2 : index) : i64
    %304 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb40(%302 : i64)
  ^bb40(%305: i64):  // 2 preds: ^bb39, ^bb41
    %306 = llvm.icmp "slt" %305, %303 : i64
    llvm.cond_br %306, ^bb41, ^bb42
  ^bb41:  // pred: ^bb40
    %307 = llvm.extractvalue %71[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %308 = llvm.mlir.constant(4 : index) : i64
    %309 = llvm.mul %290, %308  : i64
    %310 = llvm.mlir.constant(4 : index) : i64
    %311 = llvm.mul %295, %310  : i64
    %312 = llvm.add %309, %311  : i64
    %313 = llvm.mlir.constant(2 : index) : i64
    %314 = llvm.mul %300, %313  : i64
    %315 = llvm.add %312, %314  : i64
    %316 = llvm.add %315, %305  : i64
    %317 = llvm.getelementptr %307[%316] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %318 = llvm.load %317 : !llvm.ptr<i32>
    %319 = llvm.extractvalue %286[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %320 = llvm.mlir.constant(4 : index) : i64
    %321 = llvm.mul %290, %320  : i64
    %322 = llvm.mlir.constant(2 : index) : i64
    %323 = llvm.mul %305, %322  : i64
    %324 = llvm.add %321, %323  : i64
    %325 = llvm.add %324, %300  : i64
    %326 = llvm.add %325, %295  : i64
    %327 = llvm.getelementptr %319[%326] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %318, %327 : !llvm.ptr<i32>
    %328 = llvm.add %305, %304  : i64
    llvm.br ^bb40(%328 : i64)
  ^bb42:  // pred: ^bb40
    %329 = llvm.add %300, %299  : i64
    llvm.br ^bb38(%329 : i64)
  ^bb43:  // pred: ^bb38
    %330 = llvm.add %295, %294  : i64
    llvm.br ^bb36(%330 : i64)
  ^bb44:  // pred: ^bb36
    %331 = llvm.add %290, %289  : i64
    llvm.br ^bb34(%331 : i64)
  ^bb45:  // pred: ^bb34
    %332 = llvm.mlir.constant(1 : index) : i64
    %333 = llvm.mlir.constant(2 : index) : i64
    %334 = llvm.mlir.constant(2 : index) : i64
    %335 = llvm.mlir.constant(1 : index) : i64
    %336 = llvm.mlir.constant(1 : index) : i64
    %337 = llvm.mlir.constant(4 : index) : i64
    %338 = llvm.mlir.constant(4 : index) : i64
    %339 = llvm.mlir.null : !llvm.ptr<i32>
    %340 = llvm.getelementptr %339[%338] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %341 = llvm.ptrtoint %340 : !llvm.ptr<i32> to i64
    %342 = llvm.mlir.constant(16 : index) : i64
    %343 = llvm.add %341, %342  : i64
    %344 = llvm.call @malloc(%343) : (i64) -> !llvm.ptr<i8>
    %345 = llvm.bitcast %344 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %346 = llvm.ptrtoint %345 : !llvm.ptr<i32> to i64
    %347 = llvm.mlir.constant(1 : index) : i64
    %348 = llvm.sub %342, %347  : i64
    %349 = llvm.add %346, %348  : i64
    %350 = llvm.urem %349, %342  : i64
    %351 = llvm.sub %349, %350  : i64
    %352 = llvm.inttoptr %351 : i64 to !llvm.ptr<i32>
    %353 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %354 = llvm.insertvalue %345, %353[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %355 = llvm.insertvalue %352, %354[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %356 = llvm.mlir.constant(0 : index) : i64
    %357 = llvm.insertvalue %356, %355[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %358 = llvm.insertvalue %332, %357[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %359 = llvm.insertvalue %333, %358[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %360 = llvm.insertvalue %334, %359[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %361 = llvm.insertvalue %335, %360[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %362 = llvm.insertvalue %337, %361[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %363 = llvm.insertvalue %334, %362[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %364 = llvm.insertvalue %335, %363[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %365 = llvm.insertvalue %336, %364[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %366 = llvm.mlir.constant(0 : index) : i64
    %367 = llvm.mlir.constant(1 : index) : i64
    %368 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb46(%366 : i64)
  ^bb46(%369: i64):  // 2 preds: ^bb45, ^bb56
    %370 = llvm.icmp "slt" %369, %367 : i64
    llvm.cond_br %370, ^bb47, ^bb57
  ^bb47:  // pred: ^bb46
    %371 = llvm.mlir.constant(0 : index) : i64
    %372 = llvm.mlir.constant(2 : index) : i64
    %373 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb48(%371 : i64)
  ^bb48(%374: i64):  // 2 preds: ^bb47, ^bb55
    %375 = llvm.icmp "slt" %374, %372 : i64
    llvm.cond_br %375, ^bb49, ^bb56
  ^bb49:  // pred: ^bb48
    %376 = llvm.mlir.constant(0 : index) : i64
    %377 = llvm.mlir.constant(2 : index) : i64
    %378 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb50(%376 : i64)
  ^bb50(%379: i64):  // 2 preds: ^bb49, ^bb54
    %380 = llvm.icmp "slt" %379, %377 : i64
    llvm.cond_br %380, ^bb51, ^bb55
  ^bb51:  // pred: ^bb50
    %381 = llvm.mlir.constant(0 : index) : i64
    %382 = llvm.mlir.constant(1 : index) : i64
    %383 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb52(%381 : i64)
  ^bb52(%384: i64):  // 2 preds: ^bb51, ^bb53
    %385 = llvm.icmp "slt" %384, %382 : i64
    llvm.cond_br %385, ^bb53, ^bb54
  ^bb53:  // pred: ^bb52
    %386 = llvm.extractvalue %286[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %387 = llvm.mlir.constant(4 : index) : i64
    %388 = llvm.mul %369, %387  : i64
    %389 = llvm.mlir.constant(2 : index) : i64
    %390 = llvm.mul %374, %389  : i64
    %391 = llvm.add %388, %390  : i64
    %392 = llvm.add %391, %379  : i64
    %393 = llvm.add %392, %384  : i64
    %394 = llvm.getelementptr %386[%393] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %395 = llvm.load %394 : !llvm.ptr<i32>
    %396 = llvm.extractvalue %29[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %397 = llvm.load %396 : !llvm.ptr<i32>
    %398 = llvm.icmp "slt" %395, %397 : i32
    %399 = llvm.select %398, %397, %395 : i1, i32
    %400 = llvm.extractvalue %36[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %401 = llvm.load %400 : !llvm.ptr<i32>
    %402 = llvm.icmp "slt" %399, %401 : i32
    %403 = llvm.select %402, %399, %401 : i1, i32
    %404 = llvm.extractvalue %365[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %405 = llvm.mlir.constant(4 : index) : i64
    %406 = llvm.mul %369, %405  : i64
    %407 = llvm.mlir.constant(2 : index) : i64
    %408 = llvm.mul %374, %407  : i64
    %409 = llvm.add %406, %408  : i64
    %410 = llvm.add %409, %379  : i64
    %411 = llvm.add %410, %384  : i64
    %412 = llvm.getelementptr %404[%411] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %403, %412 : !llvm.ptr<i32>
    %413 = llvm.add %384, %383  : i64
    llvm.br ^bb52(%413 : i64)
  ^bb54:  // pred: ^bb52
    %414 = llvm.add %379, %378  : i64
    llvm.br ^bb50(%414 : i64)
  ^bb55:  // pred: ^bb50
    %415 = llvm.add %374, %373  : i64
    llvm.br ^bb48(%415 : i64)
  ^bb56:  // pred: ^bb48
    %416 = llvm.add %369, %368  : i64
    llvm.br ^bb46(%416 : i64)
  ^bb57:  // pred: ^bb46
    %417 = llvm.mlir.constant(1 : index) : i64
    %418 = llvm.mlir.constant(1 : index) : i64
    %419 = llvm.mlir.constant(2 : index) : i64
    %420 = llvm.mlir.constant(2 : index) : i64
    %421 = llvm.mlir.constant(1 : index) : i64
    %422 = llvm.mlir.constant(4 : index) : i64
    %423 = llvm.mlir.constant(4 : index) : i64
    %424 = llvm.mlir.constant(4 : index) : i64
    %425 = llvm.mlir.null : !llvm.ptr<i32>
    %426 = llvm.getelementptr %425[%424] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %427 = llvm.ptrtoint %426 : !llvm.ptr<i32> to i64
    %428 = llvm.mlir.constant(16 : index) : i64
    %429 = llvm.add %427, %428  : i64
    %430 = llvm.call @malloc(%429) : (i64) -> !llvm.ptr<i8>
    %431 = llvm.bitcast %430 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %432 = llvm.ptrtoint %431 : !llvm.ptr<i32> to i64
    %433 = llvm.mlir.constant(1 : index) : i64
    %434 = llvm.sub %428, %433  : i64
    %435 = llvm.add %432, %434  : i64
    %436 = llvm.urem %435, %428  : i64
    %437 = llvm.sub %435, %436  : i64
    %438 = llvm.inttoptr %437 : i64 to !llvm.ptr<i32>
    %439 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %440 = llvm.insertvalue %431, %439[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %441 = llvm.insertvalue %438, %440[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %442 = llvm.mlir.constant(0 : index) : i64
    %443 = llvm.insertvalue %442, %441[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %444 = llvm.insertvalue %417, %443[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %445 = llvm.insertvalue %418, %444[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %446 = llvm.insertvalue %419, %445[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %447 = llvm.insertvalue %420, %446[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %448 = llvm.insertvalue %423, %447[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %449 = llvm.insertvalue %422, %448[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %450 = llvm.insertvalue %420, %449[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %451 = llvm.insertvalue %421, %450[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %452 = llvm.mlir.constant(0 : index) : i64
    %453 = llvm.mlir.constant(1 : index) : i64
    %454 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb58(%452 : i64)
  ^bb58(%455: i64):  // 2 preds: ^bb57, ^bb68
    %456 = llvm.icmp "slt" %455, %453 : i64
    llvm.cond_br %456, ^bb59, ^bb69
  ^bb59:  // pred: ^bb58
    %457 = llvm.mlir.constant(0 : index) : i64
    %458 = llvm.mlir.constant(2 : index) : i64
    %459 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb60(%457 : i64)
  ^bb60(%460: i64):  // 2 preds: ^bb59, ^bb67
    %461 = llvm.icmp "slt" %460, %458 : i64
    llvm.cond_br %461, ^bb61, ^bb68
  ^bb61:  // pred: ^bb60
    %462 = llvm.mlir.constant(0 : index) : i64
    %463 = llvm.mlir.constant(2 : index) : i64
    %464 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb62(%462 : i64)
  ^bb62(%465: i64):  // 2 preds: ^bb61, ^bb66
    %466 = llvm.icmp "slt" %465, %463 : i64
    llvm.cond_br %466, ^bb63, ^bb67
  ^bb63:  // pred: ^bb62
    %467 = llvm.mlir.constant(0 : index) : i64
    %468 = llvm.mlir.constant(1 : index) : i64
    %469 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb64(%467 : i64)
  ^bb64(%470: i64):  // 2 preds: ^bb63, ^bb65
    %471 = llvm.icmp "slt" %470, %468 : i64
    llvm.cond_br %471, ^bb65, ^bb66
  ^bb65:  // pred: ^bb64
    %472 = llvm.extractvalue %365[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %473 = llvm.mlir.constant(4 : index) : i64
    %474 = llvm.mul %455, %473  : i64
    %475 = llvm.mlir.constant(2 : index) : i64
    %476 = llvm.mul %460, %475  : i64
    %477 = llvm.add %474, %476  : i64
    %478 = llvm.add %477, %465  : i64
    %479 = llvm.add %478, %470  : i64
    %480 = llvm.getelementptr %472[%479] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %481 = llvm.load %480 : !llvm.ptr<i32>
    %482 = llvm.extractvalue %451[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %483 = llvm.mlir.constant(4 : index) : i64
    %484 = llvm.mul %455, %483  : i64
    %485 = llvm.mlir.constant(4 : index) : i64
    %486 = llvm.mul %470, %485  : i64
    %487 = llvm.add %484, %486  : i64
    %488 = llvm.mlir.constant(2 : index) : i64
    %489 = llvm.mul %465, %488  : i64
    %490 = llvm.add %487, %489  : i64
    %491 = llvm.add %490, %460  : i64
    %492 = llvm.getelementptr %482[%491] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %481, %492 : !llvm.ptr<i32>
    %493 = llvm.add %470, %469  : i64
    llvm.br ^bb64(%493 : i64)
  ^bb66:  // pred: ^bb64
    %494 = llvm.add %465, %464  : i64
    llvm.br ^bb62(%494 : i64)
  ^bb67:  // pred: ^bb62
    %495 = llvm.add %460, %459  : i64
    llvm.br ^bb60(%495 : i64)
  ^bb68:  // pred: ^bb60
    %496 = llvm.add %455, %454  : i64
    llvm.br ^bb58(%496 : i64)
  ^bb69:  // pred: ^bb58
    %497 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    %498 = llvm.insertvalue %157, %497[0] : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %499 = llvm.insertvalue %451, %498[1] : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    llvm.return %499 : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>>, %arg2: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) attributes {input_names = ["v5_0", "v4_0"], llvm.emit_c_interface, output_names = ["v0_0", "v1_0"]} {
    %0 = llvm.load %arg1 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>>
    %1 = llvm.extractvalue %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %2 = llvm.extractvalue %0[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %3 = llvm.extractvalue %0[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %4 = llvm.extractvalue %0[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %5 = llvm.extractvalue %0[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %6 = llvm.extractvalue %0[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %7 = llvm.extractvalue %0[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %8 = llvm.load %arg2 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %9 = llvm.extractvalue %8[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %10 = llvm.extractvalue %8[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %11 = llvm.extractvalue %8[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %12 = llvm.extractvalue %8[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %13 = llvm.extractvalue %8[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %14 = llvm.extractvalue %8[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %15 = llvm.extractvalue %8[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %16 = llvm.extractvalue %8[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %17 = llvm.extractvalue %8[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %18 = llvm.extractvalue %8[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %19 = llvm.extractvalue %8[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %20 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %9, %10, %11, %12, %13, %14, %15, %16, %17, %18, %19) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    llvm.store %20, %arg0 : !llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %3 = llvm.mlir.constant(0 : i64) : i64
    %4 = llvm.getelementptr %0[%3] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %5 = llvm.load %4 : !llvm.ptr<ptr<i8>>
    %6 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>>
    %7 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>
    %8 = llvm.call @omTensorGetDataPtr(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %9 = llvm.bitcast %8 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %10 = llvm.insertvalue %9, %7[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %11 = llvm.insertvalue %9, %10[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %12 = llvm.mlir.constant(0 : i64) : i64
    %13 = llvm.insertvalue %12, %11[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %14 = llvm.call @omTensorGetShape(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %15 = llvm.call @omTensorGetStrides(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %16 = llvm.mlir.constant(0 : i64) : i64
    %17 = llvm.getelementptr %14[%16] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %18 = llvm.load %17 : !llvm.ptr<i64>
    %19 = llvm.insertvalue %18, %13[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %20 = llvm.getelementptr %15[%16] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %21 = llvm.load %20 : !llvm.ptr<i64>
    %22 = llvm.insertvalue %21, %19[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %23 = llvm.mlir.constant(1 : i64) : i64
    %24 = llvm.getelementptr %14[%23] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %25 = llvm.load %24 : !llvm.ptr<i64>
    %26 = llvm.insertvalue %25, %22[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %27 = llvm.getelementptr %15[%23] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %28 = llvm.load %27 : !llvm.ptr<i64>
    %29 = llvm.insertvalue %28, %26[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.store %29, %6 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>>
    %30 = llvm.mlir.constant(1 : i64) : i64
    %31 = llvm.getelementptr %0[%30] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %32 = llvm.load %31 : !llvm.ptr<ptr<i8>>
    %33 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %34 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %35 = llvm.call @omTensorGetDataPtr(%32) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %36 = llvm.bitcast %35 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %37 = llvm.insertvalue %36, %34[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %38 = llvm.insertvalue %36, %37[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %39 = llvm.mlir.constant(0 : i64) : i64
    %40 = llvm.insertvalue %39, %38[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %41 = llvm.call @omTensorGetShape(%32) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %42 = llvm.call @omTensorGetStrides(%32) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %43 = llvm.mlir.constant(0 : i64) : i64
    %44 = llvm.getelementptr %41[%43] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %45 = llvm.load %44 : !llvm.ptr<i64>
    %46 = llvm.insertvalue %45, %40[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %47 = llvm.getelementptr %42[%43] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %48 = llvm.load %47 : !llvm.ptr<i64>
    %49 = llvm.insertvalue %48, %46[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %50 = llvm.mlir.constant(1 : i64) : i64
    %51 = llvm.getelementptr %41[%50] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %52 = llvm.load %51 : !llvm.ptr<i64>
    %53 = llvm.insertvalue %52, %49[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %54 = llvm.getelementptr %42[%50] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %55 = llvm.load %54 : !llvm.ptr<i64>
    %56 = llvm.insertvalue %55, %53[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %57 = llvm.mlir.constant(2 : i64) : i64
    %58 = llvm.getelementptr %41[%57] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %59 = llvm.load %58 : !llvm.ptr<i64>
    %60 = llvm.insertvalue %59, %56[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %61 = llvm.getelementptr %42[%57] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %62 = llvm.load %61 : !llvm.ptr<i64>
    %63 = llvm.insertvalue %62, %60[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %64 = llvm.mlir.constant(3 : i64) : i64
    %65 = llvm.getelementptr %41[%64] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %66 = llvm.load %65 : !llvm.ptr<i64>
    %67 = llvm.insertvalue %66, %63[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %68 = llvm.getelementptr %42[%64] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %69 = llvm.load %68 : !llvm.ptr<i64>
    %70 = llvm.insertvalue %69, %67[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    llvm.store %70, %33 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    llvm.call @_mlir_ciface_main_graph(%2, %6, %33) : (!llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) -> ()
    %71 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %72 = llvm.extractvalue %71[0] : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %73 = llvm.extractvalue %71[1] : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %74 = llvm.mlir.constant(2 : i64) : i64
    %75 = llvm.mlir.constant(16 : i64) : i64
    %76 = llvm.call @malloc(%75) : (i64) -> !llvm.ptr<i8>
    %77 = llvm.bitcast %76 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %78 = llvm.mlir.constant(3 : i64) : i64
    %79 = llvm.call @omTensorCreateUntyped(%78) : (i64) -> !llvm.ptr<i8>
    %80 = llvm.mlir.constant(1 : i64) : i64
    %81 = llvm.extractvalue %72[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %82 = llvm.bitcast %81 : !llvm.ptr<i64> to !llvm.ptr<i8>
    %83 = llvm.extractvalue %72[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %84 = llvm.bitcast %83 : !llvm.ptr<i64> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%79, %80, %82, %84) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %85 = llvm.mlir.constant(7 : i64) : i64
    llvm.call @omTensorSetDataType(%79, %85) : (!llvm.ptr<i8>, i64) -> ()
    %86 = llvm.call @omTensorGetShape(%79) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %87 = llvm.call @omTensorGetStrides(%79) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %88 = llvm.mlir.constant(0 : i64) : i64
    %89 = llvm.extractvalue %72[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %90 = llvm.getelementptr %86[%88] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %89, %90 : !llvm.ptr<i64>
    %91 = llvm.extractvalue %72[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %92 = llvm.getelementptr %87[%88] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %91, %92 : !llvm.ptr<i64>
    %93 = llvm.mlir.constant(1 : i64) : i64
    %94 = llvm.extractvalue %72[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %95 = llvm.getelementptr %86[%93] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %94, %95 : !llvm.ptr<i64>
    %96 = llvm.extractvalue %72[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %97 = llvm.getelementptr %87[%93] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %96, %97 : !llvm.ptr<i64>
    %98 = llvm.mlir.constant(2 : i64) : i64
    %99 = llvm.extractvalue %72[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %100 = llvm.getelementptr %86[%98] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %99, %100 : !llvm.ptr<i64>
    %101 = llvm.extractvalue %72[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %102 = llvm.getelementptr %87[%98] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %101, %102 : !llvm.ptr<i64>
    %103 = llvm.mlir.constant(0 : i64) : i64
    %104 = llvm.getelementptr %77[%103] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %79, %104 : !llvm.ptr<ptr<i8>>
    %105 = llvm.mlir.constant(4 : i64) : i64
    %106 = llvm.call @omTensorCreateUntyped(%105) : (i64) -> !llvm.ptr<i8>
    %107 = llvm.mlir.constant(1 : i64) : i64
    %108 = llvm.extractvalue %73[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %109 = llvm.bitcast %108 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %110 = llvm.extractvalue %73[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %111 = llvm.bitcast %110 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%106, %107, %109, %111) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %112 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%106, %112) : (!llvm.ptr<i8>, i64) -> ()
    %113 = llvm.call @omTensorGetShape(%106) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %114 = llvm.call @omTensorGetStrides(%106) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %115 = llvm.mlir.constant(0 : i64) : i64
    %116 = llvm.extractvalue %73[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %117 = llvm.getelementptr %113[%115] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %116, %117 : !llvm.ptr<i64>
    %118 = llvm.extractvalue %73[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %119 = llvm.getelementptr %114[%115] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %118, %119 : !llvm.ptr<i64>
    %120 = llvm.mlir.constant(1 : i64) : i64
    %121 = llvm.extractvalue %73[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %122 = llvm.getelementptr %113[%120] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %121, %122 : !llvm.ptr<i64>
    %123 = llvm.extractvalue %73[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %124 = llvm.getelementptr %114[%120] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %123, %124 : !llvm.ptr<i64>
    %125 = llvm.mlir.constant(2 : i64) : i64
    %126 = llvm.extractvalue %73[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %127 = llvm.getelementptr %113[%125] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %126, %127 : !llvm.ptr<i64>
    %128 = llvm.extractvalue %73[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %129 = llvm.getelementptr %114[%125] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %128, %129 : !llvm.ptr<i64>
    %130 = llvm.mlir.constant(3 : i64) : i64
    %131 = llvm.extractvalue %73[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %132 = llvm.getelementptr %113[%130] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %131, %132 : !llvm.ptr<i64>
    %133 = llvm.extractvalue %73[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %134 = llvm.getelementptr %114[%130] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %133, %134 : !llvm.ptr<i64>
    %135 = llvm.mlir.constant(1 : i64) : i64
    %136 = llvm.getelementptr %77[%135] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %106, %136 : !llvm.ptr<ptr<i8>>
    %137 = llvm.call @omTensorListCreate(%77, %74, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %137 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_in_sig : !llvm.ptr<array<134 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<134 x i8>> to !llvm.ptr<i8>
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

